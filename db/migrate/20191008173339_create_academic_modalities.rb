class CreateAcademicModalities < ActiveRecord::Migration[5.1]
  def change
    create_table :academic_modalities do |t|
      t.string :description
      t.string :resume_desc

      t.timestamps
    end
  end
end
