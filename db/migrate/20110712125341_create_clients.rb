class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.boolean :active
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :phone
      t.references :banner

      t.timestamps
    end
  end
end
