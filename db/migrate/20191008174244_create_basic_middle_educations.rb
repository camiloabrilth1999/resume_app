class CreateBasicMiddleEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :basic_middle_educations do |t|
      t.integer :last_degree
      t.string :degree_obtained
      t.date :date_degree

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
