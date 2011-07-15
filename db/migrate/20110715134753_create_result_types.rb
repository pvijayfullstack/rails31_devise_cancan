class CreateResultTypes < ActiveRecord::Migration
  def change
    create_table :result_types do |t|
      t.string :name
      t.boolean :active, :default => true
      t.references :activity_type
      t.timestamps
    end
      add_foreign_key :result_types, :activity_types
  end
end
