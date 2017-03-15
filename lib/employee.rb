class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, inclusion: { in: 40..200, :message => 'must be an integer between 4 and 200' }
  before_create :generate_password

  private
#
  def generate_password
    self.password = 8.times.map { [*'0'..'9', *'a'..'z', *'A'..'Z'].sample }.join
  end
end
