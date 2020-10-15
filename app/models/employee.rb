class Employee < ApplicationRecord
  belongs_to :division
  has_and_belongs_to_many(:projects)
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_employee)

  private 
    def titleize_employee
      self.name = self.name.titleize
    end
end