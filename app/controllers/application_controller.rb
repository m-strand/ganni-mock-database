class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  
  get "/items/:category/:color/:size" do
    if category!=null AND color!=null AND size !=null
    items=Item.where("category = ? AND color = ? AND size = ?")

    elsif size=null AND category!=null AND color!=null
      items=Item.where("category = ? AND color=?")

    elsif size!=null AND category=null AND color!=null
      items=Item.where("color = ? AND size = ?")

    elsif size!=null AND category!=null AND color=null
      items=Item.where("category = ? AND size = ?")

    elsif size=null AND category!=null AND color=null
      items=Item.where("category = ?")

    elsif size!=null AND category=null AND color=null
      items=Item.where("size = ?")

    elsif size=null AND category=null AND color!=null
      items=Item.where("color = ?")
    end
    items.to_json
  end

  get "/shopCards" do
    shopCards=Shopcard.all
    shopCards.to_json
  end

  get "/users/:email/:password" do
    user=User.where("email=? AND password=?")
    user.to_json
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
