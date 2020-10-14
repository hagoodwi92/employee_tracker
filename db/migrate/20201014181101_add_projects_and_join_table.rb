class AddProjectsAndJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
    end

    create_table :employees_projects, id: false do |t|
      t.belongs_to :project, index: true
      t.belongs_to :employee, index: true
    end
  end
end
