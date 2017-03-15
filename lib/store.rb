class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, :greater_than_or_equal_to => 0 }
  validate :stores_must_carry_at_least_one_gender_apparel
  before_destroy :empty?

  def stores_must_carry_at_least_one_gender_apparel
    errors.add(:mens_apparel, 'must carry at least one gender apparel') if (!mens_apparel && !womens_apparel)
  end

  def empty?
    throw :abort unless self.employees.size == 0
  end
end
