class AddColumnsToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :name, :string
    add_column :tasks, :task_details, :string
    add_column :tasks, :frequency, :string
  end
end
