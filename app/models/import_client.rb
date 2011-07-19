class ImportClient < ActiveRecord::Base

  # for pagination with will_paginate
  cattr_reader :per_page
  @@per_page = Rails31DeviseCancan::Application.config.per_page
  
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
