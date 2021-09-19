class AddUserRefToTeams < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :users,  column: :owner_id, foreign_key: true
end
  end
