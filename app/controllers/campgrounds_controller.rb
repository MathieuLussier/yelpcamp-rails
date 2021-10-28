class CampgroundsController < ApplicationController
  def index
    @campgrounds = Campground.all
  end

  def show
    @campground = Campground.find_by_id(params[:id])
  end
end
