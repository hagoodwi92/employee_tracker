require 'rails_helper'

describe Employee do
  it { should belong_to(:division) }
  it { should have_and_belong_to_many :projects }
  it { should validate_presence_of :name}
  it { should validate_length_of(:name).is_at_most(100) }
  it("Titleizes the name of a division") do 
    #division = Division.create({name: "tech"})
    employee = Employee.create({name: "bob"})
    expect(employee.name()).to(eq("Bob"))
  end
end