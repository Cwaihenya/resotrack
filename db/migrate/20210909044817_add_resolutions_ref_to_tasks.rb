class AddResolutionsRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :resolutions, foreign_key: true
  end
end
