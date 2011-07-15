class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :note
      t.references :activity_type, :result_type, :user, :client
      t.timestamps
    end
#    add_foreign_key :activities, :activity_types, :name => 'fk_activities_activity_types'
#    add_foreign_key :activities, :result_types, :name => 'fk_activities_result_types'
#    add_foreign_key :activities, :users, :name => 'fk_activities_users'
#    add_foreign_key :activities, :clients, :name => 'fk_activities_clients'
  end
end
