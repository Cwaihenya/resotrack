class AddResolutionRefToTasks < ActiveRecord::Migration[5.2]
  def change
      add_reference :tasks, :resolution, foreign_key: true
  end
end
