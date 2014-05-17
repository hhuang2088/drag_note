class NotesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]


  def create 
    @note = Note.create note_params
    redirect_to chapter_path(note_params[:chapter_id])
  end

  def show
    @note = Note.find(params[:id])
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update 
    @note = Note.find(params[:id])
    @note.update note_params 
    redirect_to note_path(@note)
  end

  def destroy 
    note = Note.find(params[:id])
    binding.pry
    chapter = note.chapter 
    note.destroy
    redirect_to chapter 
  end

  private 
    def note_params 
      params.require(:note).permit(:title, :body, :chapter_id)
    end
end
