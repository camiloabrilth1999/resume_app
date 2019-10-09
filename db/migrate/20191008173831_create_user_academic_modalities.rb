class CreateUserAcademicModalities < ActiveRecord::Migration[5.1]
  def change
    create_table :user_academic_modalities do |t|
      t.integer :number_approved_semesters
      t.boolean :graduate
      t.string :name_studies
      t.date :date_completation_studie
      t.string :number_professional_card

      t.references :user, foreign_key: true
      t.references :academicmodality, foreign_key: true

      t.timestamps
    end
  end
end
