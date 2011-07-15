class ResultType < ActiveRecord::Base
  belongs_to :activity_type
  has_many :activities

  validate :name, :presence => true,
                  :unique => true
  validate :activity_type_id, :presence => true,
                              :unique   => true
end

