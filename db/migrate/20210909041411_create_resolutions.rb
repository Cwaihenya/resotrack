class CreateResolutions < ActiveRecord::Migration[5.2]
  def change
    create_table :resolutions do |t|
      t.string :title
      t.string :details
      t.date :end_date

      t.timestamps
    end
  end
end
