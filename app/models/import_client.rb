class ImportClient < ActiveRecord::Base

  # for pagination with will_paginate
  cattr_reader :per_page
  @@per_page = Dolbec::Application.config.per_page
  
  # Define index for thinking sphinx search engine
#  define_index do
#    indexes sort_key
#    indexes name, :sortable => true
#    indexes address
#    indexes city, :sortable => true
#    indexes postal_code
#    indexes phone
#
#    has created_at, updated_at
#  end

  # Sunspot / Solr search indexing
  searchable do
    text :name
    text :sort_key
    text :address
    text :city
    text :postal_code
    text :phone
    text :created_at
    time :created_at
    integer :company_id, :references => Company
  end


end
