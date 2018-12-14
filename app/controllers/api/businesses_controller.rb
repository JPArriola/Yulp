class Api::BusinessesController < ApplicationController
  def index
    @businesses = Businesses.all
  end

  def show
    @business = Business.find(params[:id])
  end
end
