class PicturesController < ApplicationController

  def index
    # get the data from the Class Method (returns an array)
    @pictures = Picture.all

    # listen for a new picture url from a query string
    @new_picture = params["picture_url"]
  end

  def show
    @user_input = params[:id]
    @picture = Picture.all[@user_input.to_i - 1]
  end

end
