class CreateIdioms < ActiveRecord::Migration[5.1]
  def change
    create_table :idioms do |t|
      t.string :description

      t.timestamps
    end
  end
end
