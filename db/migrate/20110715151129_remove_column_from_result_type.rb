class RemoveColumnFromResultType < ActiveRecord::Migration
  def up
    remove_foreign_key :result_types, :activity_types
    remove_column :result_types, :activity_type_id
  end

  def down
    add_column :result_types, :activity_type_id, :integer
    add_foreign_key :result_types, :activity_types
    
  end
end
