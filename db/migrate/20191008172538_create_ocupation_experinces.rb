class CreateOcupationExperinces < ActiveRecord::Migration[5.1]
  def change
    create_table :ocupation_experinces do |t|
      t.integer :years
      t.integer :months

      t.references :user, foreign_key: true
      t.references :ocupation, foreign_key: true

      t.timestamps
    end
  end
end
