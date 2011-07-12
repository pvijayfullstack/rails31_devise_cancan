class CreateImportClients < ActiveRecord::Migration
  def change
    create_table :import_clients do |t|
      t.references :company
      t.integer :client_no
      t.boolean :active
      t.string :sort_key, :limit => 25
      t.string :name, :limit => 50
      t.string :address, :limit => 100
      t.string :city, :limit => 50
      t.string :postal_code, :limit => 12
      t.string :phone, :limit => 12
      t.boolean :new

      t.timestamps
    end
  end
end
