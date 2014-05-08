class SearchesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def create 
    @search = Search.new search_params
    redirect_to chapter_path(search_params[:chapter_id]])
  end

  def show
    @search = Search.find(params[:id])
  end

  def destroy
    search = Note.find(params[:id])
    chapter = note.chapter
    search.destroy
    redirect_to chapter 
  end

  private 
  def search_params
    params.require(:search).permit(:query, :chapter_id)
  end
end
