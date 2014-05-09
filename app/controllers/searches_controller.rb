class SearchesController < ApplicationController
  before_filter :authenticate_user!, except: [:show]

  def create 
    @search = Search.create search_params
    redirect_to chapter_path(search_params[:chapter_id])
  end

  def show
    @search = Search.find(params[:id])
    # response = Typhoeus.get('http://en.wikipedia.org/w/api.php', :params => {:action => 'opensearch', :format => 'json', :search => @search.query})
    # binding.pry
    # @results = JSON.parse(response.body)

  end

  def destroy
    search = Search.find(params[:id])
    chapter = search.chapter
    search.destroy
    redirect_to chapter 
  end

  private 
  def search_params
    params.require(:search).permit(:query, :chapter_id)
  end
end
