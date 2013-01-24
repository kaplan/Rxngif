class PicturesController < ApplicationController

  def index
    # get the data from the Class Method (returns an array)
    @pictures = Picture.all

    # listen for a new picture url from a query string
    @new_picture = params["picture_url"]
    if @new_picture != nil
      @pictures << @new_picture
    end

    # or you could just grab the param nil or not.
    # you'll need to check nil either way here or in View.
    # @pictures << @new_picture

  end

  def show
    @user_input = params[:id]
    @picture = Picture.all[@user_input.to_i - 1]
  end

end
