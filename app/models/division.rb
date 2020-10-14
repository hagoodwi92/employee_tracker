class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :employees
end
