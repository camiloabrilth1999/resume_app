class CreateNacionalityTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :nacionality_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
