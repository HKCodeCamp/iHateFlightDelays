IHateFlightDelays.controllers :account do
  # get :index, :map => "/foo/bar" do
  #   session[:foo] = "bar"
  #   render 'index'
  # end

  # get :sample, :map => "/sample/url", :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get "/example" do
  #   "Hello world!"
  # end
  
  post :signup do
  	logger.info(params)
  	JSON.dump({:item => {:username => params["username"], :status => :success}})
  	
  	
  	#account = Account.new(params)  	
  end

  
end
