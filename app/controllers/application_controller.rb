class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  get "/items/:category" do
    items=Item.all
    items.to_json
  end

  get "/items/:color" do 
    items=Item.all
    items.to_json
  end

  get "/items/:size" do
    items=Item.all
    items.to_json
  end

  get "/shopCards" do
    shopCards=Shopcard.all
    shopCards.to_json
  end

  get "/users/" do
    users=User.all
    users.to_json
  end

  post "/users" do
    user = User.create(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email],
    password: params[:password]
    )
    user.to_json
  end

  patch "/users/:email" do
    user=User.find_by(params[:email])
    user.update(
      password: params[:password]
    )
    user.to_json
  end

  delete "/users/:email" do
    user = User.find_by(params[:email])
    user.destroy
    user.to_json
  end
end
