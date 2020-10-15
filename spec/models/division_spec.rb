require 'rails_helper'

describe Division do
  it { should have_many(:employees) }
  it { should validate_presence_of :name}
  it { should validate_length_of(:name).is_at_most(100) }
  it("Titleizes the name of a division") do 
    division = Division.create({name: "tech"})
    expect(division.name()).to(eq("Tech"))
  end
end