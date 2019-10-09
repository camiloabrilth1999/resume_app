class CreateEmployments < ActiveRecord::Migration[5.1]
  def change
    create_table :employments do |t|
      t.string :charge_company
      t.string :dependency
      t.date :entry_date
      t.date :retirement_date
      t.boolean :current_job

      t.references :user, foreign_key: true
      t.references :enterprise, foreign_key: true

      t.timestamps
    end
  end
end
