class AddUsersRefToTeam < ActiveRecord::Migration[5.2]
  def change
    add_reference :teams, :user,  column: :owner_id, foreign_key: true

  end
end
