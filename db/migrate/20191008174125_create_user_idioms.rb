class CreateUserIdioms < ActiveRecord::Migration[5.1]
  def change
    create_table :user_idioms do |t|
      t.string :to_speak
      t.string :to_read
      t.string :to_write

      t.references :user, foreign_key: true
      t.references :idiom, foreign_key: true

      t.timestamps
    end
  end
end
