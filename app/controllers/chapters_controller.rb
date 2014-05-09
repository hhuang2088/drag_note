class ChaptersController < ApplicationController
  before_action :authenticate_user!, except: [:show]
  # before_filter :check_chapter_owner, only: [:edit, :update, :destroy]
  
  def index
    @chapters = current_user.chapters.all 
  end

  def new
    @chapter = current_user.chapters.new
  end

  def create 
    chapter = current_user.chapters.new chapter_params 

    if chapter.save 
      redirect_to chapter
    else
      render :new
    end
  end

  def show 
    @chapter = Chapter.find(params[:id])
    @note = Note.new 
    @search = Search.new
  end

  def edit
    @chapter = Chapter.find(params[:id])
  end

  def update 
    @chapter = Chapter.find(params[:id])
    if @chapter.update_attributes chapter_params
      redirect_to @chapter 
    else
      render :edit
    end
  end

  def destroy 
    Chapter.find(params[:id]).destroy
    redirect_to root_path

    # chapter = Chapter.find(params[:id])
    # user = chapter.user
    # chapter.destroy
    # redirect_to chapters_path

    # note = Note.find(params[:id])
    # chapter = note.chapter 
    # note.destroy
    # redirect_to chapter 
  end

  private 
  def chapter_params 
    params.require(:chapter).permit(:title)
  end

end
