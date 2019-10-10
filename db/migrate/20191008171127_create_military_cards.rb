class CreateMilitaryCards < ActiveRecord::Migration[5.1]
  def change
    create_table :military_cards do |t|
      t.string :number
      t.string :dm

      t.references :militarycardtype, foreign_key: true

      t.timestamps
    end
  end
end
