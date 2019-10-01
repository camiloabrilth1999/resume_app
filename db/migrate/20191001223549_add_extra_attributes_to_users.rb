class AddExtraAttributesToUsers < ActiveRecord::Migration[5.1]
  def change
    #Add atributes extra for User Model Devise
    add_column :users, :name, :string
    add_column :users, :first_last_name, :string
    add_column :users, :second_last_name, :string
    add_column :users, :national_identifier_number, :string
    add_column :users, :birth_date, :date
  end
end
