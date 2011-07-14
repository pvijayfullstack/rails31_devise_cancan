class ChangeColumnClientNoOfImportClients < ActiveRecord::Migration
  def up
    change_column :import_clients, :client_no, :string, :limit => 20
  end

  def down
    change_column :import_clients, :client_no, :integer
  end
end
