class ClientsController < InheritedResources::Base
  load_and_authorize_resource
  after_filter :destroy_import_client_session, :only => [:create, :update]
  before_filter :destroy_session_key, :only => [:index, :show]
  before_filter :find_client_and_lock, :only => [:update, :create, :edit]

  def suggest
    import_client = ImportClient.find(params[:import_id])
    name = import_client.name
    session[:import_client] = import_client
    @clients = Client.clients_suggested( name )
  end

  # create a new client from import_client with import_id
  def bring_in
    if session[:import_client]
      ic = session[:import_client]
      @client = Client.new(
                  :name => ic.name,
                  :address => ic.address,
                  :city => ic.city,
                  :postal_code => ic.postal_code,
                  :phone => ic.phone)
    else
      redirect_to import_clients_path 
    end
  end

  def update_exist
    if session[:import_client]
      ic = session[:import_client]
      @client = Client.find(params[:id])  
      @client.name = ic.name
      @client.address = ic.address
      @client.city = ic.city
      @client.postal_code = ic.postal_code
      @client.phone = ic.phone
    else
      redirect_to import_clients_path
    end
  end

  protected 
  def destroy_import_client_session
    if session[:import_client]
      import_client = session[:import_client]
      import_client.update_attribute( :new, false )
      destroy_session_key
    end
  end

  def destroy_session_key 
    session[:import_client] = nil
  end

  def find_client_and_lock
    @client = Client.find(params[:id], :lock => true)
  end
end
