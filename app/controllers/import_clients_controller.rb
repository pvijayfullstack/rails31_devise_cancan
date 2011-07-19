class ImportClientsController < InheritedResources::Base
  load_and_authorize_resource
  def index
    search = Sunspot.search(ImportClient) do
      keywords(params[:q])
      paginate(:page => params[:page], :per_page=> Rails31DeviseCancan::Application.config.per_page)
    end
    @import_clients = search.results

    #@import_clients = ImportClient.paginate :page => params[:page], :order => 'created_at DESC'
  end
  def search
    search = Sunspot.search(ImportClient) do
      keywords(params[:q])
    end
    @import_clients = search.results
  end
end
