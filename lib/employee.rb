class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id,
  presence: true
  validates :hourly_rate,
  inclusion: { in: 4..200, :message => 'must be an integer between 4 and 200' }

end
