class CreateNationalIdentifierTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :national_identifier_types do |t|
      t.string :description
      t.string :resume_desc

      t.timestamps
    end
  end
end
