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
  	params.delete("password1")
  	password = params.delete("password")
  	account = Account.new(params)
  	account.password = password
  	account.save
  	JSON.dump({:item => {:username => params["username"], :status => :success}}) 	
  	
  	  	
  end

  
end
