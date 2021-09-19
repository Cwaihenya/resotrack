class AddUserRefToResolutions < ActiveRecord::Migration[5.2]
  def change
    add_reference :resolutions, :user, foreign_key: true
  end
end
