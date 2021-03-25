class Employee < ApplicationRecord
  belongs_to :user
  has_many :batteries

  def full_name
    "#{first_name} #{last_name}"
  end
end
