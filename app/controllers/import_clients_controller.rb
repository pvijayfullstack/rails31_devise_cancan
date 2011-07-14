class ImportClientsController < InheritedResources::Base
  load_and_authorize_resource
  def index
    @import_clients = ImportClient.paginate :page => params[:page], :order => 'created_at DESC'
  end
  def search
    search = Sunspot.search(ImportClient) do
      keywords(params[:q])
    end
    @import_clients = search.results
  end
end
