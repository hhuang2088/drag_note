class SearchesController < ApplicationController
  before_filter :authenticate_user!, except: [:show]

  def create 
    @search = Search.create search_params
    request = Typhoeus.get('http://eol.org/api/search/1.0.json', :params => {q: '#{@search}', page: '1',})
    @result = JSON.parse(request.body)["results"][0]["link"]
    redirect_to chapter_path(search_params[:chapter_id])
  end

  def show
    @search = Search.find(params[:id])
  end

  def destroy
    search = Search.find(params[:id])
    binding.pry
    chapter = search.chapter
    search.destroy
    redirect_to chapter 
  end

  private 
  def search_params
    params.require(:search).permit(:query, :chapter_id, :url)
  end
end

#result = Typhoeus.get('http://eol.org/api/, params => {:search => })
