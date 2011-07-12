class AddLockVersionToClients < ActiveRecord::Migration
  def change
    add_column :clients, :lock_version, :integer
  end
end
