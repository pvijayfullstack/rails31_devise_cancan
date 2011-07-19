class Client < ActiveRecord::Base
  belongs_to :banner
  has_many :traces
  has_many :companies, :through => :traces
  has_many :activities

  # for pagination with will_paginate
  cattr_reader :per_page
  @@per_page = Rails31DeviseCancan::Application.config.per_page

  def self.exist_by_name? name
    return true unless self.where('name LIKE ?', '%' + name + '%').empty? #self.find_by_name(name.downcase)
    return false
  end

  def self.clients_suggested name
    self.where('name LIKE ?', '%' + name + '%')
  end

end
