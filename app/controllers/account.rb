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
  	begin
  	  account.save
  	  JSON.dump({:item => {:username => params["username"], :status => :success}})
  	rescue Exception => ex
      JSON.dump({:item => {:username => params["username"], :status => "failed"}})
  	  logger.error(ex.to_s)  
  	end	  	
  end
  
  post :signin do
    if Account.authenticate(params["username"], params["password"])
  		JSON.dump({:item => {:username => params["username"], :status => :success}})
  	else 
  		JSON.dump({:item => {:username => params["username"], :status => "failed"}})
  	end
  end  
end

















