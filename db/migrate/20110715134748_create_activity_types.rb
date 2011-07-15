class CreateActivityTypes < ActiveRecord::Migration
  def change
    create_table :activity_types do |t|
      t.string :name
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
