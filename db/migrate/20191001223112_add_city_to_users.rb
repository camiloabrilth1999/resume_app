class AddCityToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :city_birth, foreign_key: true
    add_reference :users, :city_residence, foreign_key: true
    add_reference :users, :gender, foreign_key: true
    add_reference :users, :militarycard, foreign_key: true
    add_reference :users, :nacionalitiestype, foreign_key: true
    add_reference :users, :nationalidentifiertype, foreign_key: true
  end
end
