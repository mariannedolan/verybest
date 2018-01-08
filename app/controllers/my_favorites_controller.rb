class MyFavoritesController < ApplicationController
  def index
    @my_favorites = MyFavorite.all

    render("my_favorites/index.html.erb")
  end

  def show
    @my_favorite = MyFavorite.find(params[:id])

    render("my_favorites/show.html.erb")
  end

  def new
    @my_favorite = MyFavorite.new

    render("my_favorites/new.html.erb")
  end

  def create
    @my_favorite = MyFavorite.new

    @my_favorite.dish_id = params[:dish_id]
    @my_favorite.restaurant_id = params[:restaurant_id]

    save_status = @my_favorite.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/my_favorites/new", "/create_my_favorite"
        redirect_to("/my_favorites")
      else
        redirect_back(:fallback_location => "/", :notice => "My favorite created successfully.")
      end
    else
      render("my_favorites/new.html.erb")
    end
  end

  def edit
    @my_favorite = MyFavorite.find(params[:id])

    render("my_favorites/edit.html.erb")
  end

  def update
    @my_favorite = MyFavorite.find(params[:id])

    @my_favorite.dish_id = params[:dish_id]
    @my_favorite.restaurant_id = params[:restaurant_id]

    save_status = @my_favorite.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/my_favorites/#{@my_favorite.id}/edit", "/update_my_favorite"
        redirect_to("/my_favorites/#{@my_favorite.id}", :notice => "My favorite updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "My favorite updated successfully.")
      end
    else
      render("my_favorites/edit.html.erb")
    end
  end

  def destroy
    @my_favorite = MyFavorite.find(params[:id])

    @my_favorite.destroy

    if URI(request.referer).path == "/my_favorites/#{@my_favorite.id}"
      redirect_to("/", :notice => "My favorite deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "My favorite deleted.")
    end
  end
end
