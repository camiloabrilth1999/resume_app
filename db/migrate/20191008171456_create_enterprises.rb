class CreateEnterprises < ActiveRecord::Migration[5.1]
  def change
    create_table :enterprises do |t|
      t.string :name
      t.string :email
      t.string :number_phone
      t.string :address

      t.references :city, foreign_key: true
      #t.references :enterprise_type, foreign_key: true
      t.references :enterprisetype, foreign_key: true

      t.timestamps
    end
  end
end
