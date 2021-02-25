class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :age, presence: true, length: {minimum: 1, maximum: 2}
  validates :mobile, presence: true, length: {minimum: 10, maximum: 10}
  validates :aadhar_number, presence: true, length: {minimum: 12, maximum: 12}, uniqueness: true
end
