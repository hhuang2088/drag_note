class ChaptersController < ApplicationController
  
  def index
    @chapters = Chapter.all 
  end

  def new
    @chapter = Chapter.new
  end

  def create 
    chapter = Chapter.new chapter_params 
    if chapter.save 
      redirect_to chapter 
    else
      render :new
    end
  end

  def show 
    @chapter = Chapter.find(params[:id])
    @note = Note.new 
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
  end

  private 
  def chapter_params 
    params.require(:chapter).permit(:title)
  end

end
