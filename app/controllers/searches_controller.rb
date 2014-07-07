class SearchesController < ApplicationController
  before_filter :authenticate_user!, except: [:show]

  def new 
    @search = Search.new 
  end

  def create 
    @search = Search.new search_params
    redirect_to chapter_path(search_params[:chapter_id])
  end

  def show
    @search = Search.find(params[:id])
    request = Typhoeus.get('http://eol.org/api/search/1.0.json', :params => {q: '#{@search}', page: '1',})
    @result = JSON.parse(response.body)["results"][0]["link"]

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

# result = Typhoeus.get('http://eol.org/api/, params => {:search => })
