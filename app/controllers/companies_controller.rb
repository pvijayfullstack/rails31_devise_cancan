class CompaniesController < InheritedResources::Base
  load_and_authorize_resource
  respond_to :html, :xml, :json
end
