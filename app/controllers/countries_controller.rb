# app/controllers/books_controller.rb
class CountriesController < ApplicationController
	respond_to :json

  def index
    if params[:query].present?
      @countries = Country.search(params[:query])
    else
      @countries = Country.all
    end

    respond_with @countries
  end

  # ...
end