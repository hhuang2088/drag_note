class NotesController < ApplicationController

  def index
    @notes = Note.all
  end
  
  def new 
    @note = Note.new
  end

  def create 
    note = Note.new note_params 
    note.save 
    redirect_to note
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
    Note.find(params[:id]).destroy
    redirect_to root_path
  end

  private 
    def note_params 
      params.require(:note).permit(:title, :body)
    end
end
