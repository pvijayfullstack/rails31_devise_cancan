class Activity < ActiveRecord::Base
  belongs_to :activity_types
  belongs_to :result_types
  belongs_to :user
end
