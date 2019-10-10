class CreateOcupations < ActiveRecord::Migration[5.1]
  def change
    create_table :ocupations do |t|
      t.string :description

      t.timestamps
    end
  end
end
