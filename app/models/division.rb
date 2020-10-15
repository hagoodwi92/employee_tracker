class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
  has_many :employees
  validates :name, presence: true
  validates_length_of :name, maximum: 100
  before_save(:titleize_division)

  private 
    def titleize_division
      self.name = self.name.titleize
    end
end
