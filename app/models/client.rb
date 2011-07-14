class Client < ActiveRecord::Base
  belongs_to :banner
  has_many :traces
  has_many :companies, :through => :traces

  # for pagination with will_paginate
  cattr_reader :per_page
  @@per_page = Dolbec::Application.config.per_page

  # Define index for thinking sphinx search engine
  #define_index do
  #  indexes name, :sortable => true
  #  indexes address
  #  indexes city, :sortable => true
  #  indexes postal_code
  #  indexes phone
  #  indexes banner(:name), :as => :banner, :sortable => true

  #  has banner_id, created_at, updated_at
  #end

  def self.exist_by_name? name
    return true unless self.where('name LIKE ?', '%' + name + '%').empty? #self.find_by_name(name.downcase)
    return false
  end

  def self.clients_suggested name
    self.where('name LIKE ?', '%' + name + '%')
  end

end
