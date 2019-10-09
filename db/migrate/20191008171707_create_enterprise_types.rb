class CreateEnterpriseTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :enterprise_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
