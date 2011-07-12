class CreateTraces < ActiveRecord::Migration
  def change
    create_table :traces do |t|
      t.references :client, :company
      t.integer :client_no
      t.timestamps
    end
  end
end
