class AddColumnsToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :name, :string
    add_column :teams, :details, :string
    add_column :teams, :owner_id, :integer, index: true
  end
end
