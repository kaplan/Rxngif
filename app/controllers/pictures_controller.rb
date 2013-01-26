class PicturesController < ApplicationController

  def create
    pic = Picture.new
    pic.url = params[:url]
    pic.caption = params[:caption]
    pic.city_of_origin = params[:city_of_origin]
    pic.save
    redirect_to "/pictures"
  end

  def index
    @pictures = Picture.all
  end

  def show
    @user_input = params[:id]
    @picture = Picture.find_by_id(@user_input)
  end

  def edit
    @id = params[:id]
    @picture = Picture.find_by_id(@id)
  end

  def update
    pic = Picture.find_by_id(params[:id])
    pic.url = params[:url]
    pic.caption = params[:caption]
    pic.city_of_origin = params[:city_of_origin]
    pic.save
    redirect_to "/pictures"
  end



  def delete
    @id = params[:id]
    @picture = Picture.find_by_id(@id)
    # pic = Picture.find_by_id(params[:id])
    # pic.destroy
    # pic.save
    # redirect_to "/pictures"
  end

  def destroy
    pic = Picture.find_by_id(params[:id])
    pic.destroy
    pic.save
    redirect_to "/pictures"
  end

  def new

  end

end
