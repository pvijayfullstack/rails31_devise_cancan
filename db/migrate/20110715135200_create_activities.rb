class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :note
      t.references :activity_type, :result_type, :user, :client
      t.timestamps
    end
    add_foreign_key :activities, :activity_types
    add_foreign_key :activities, :result_types
    add_foreign_key :activities, :users
    add_foreign_key :activities, :clients
  end
end
