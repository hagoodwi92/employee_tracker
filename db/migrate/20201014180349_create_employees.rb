class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.column(:name, :string)
      t.column(:division_id, :integer)
    end
  end
end
