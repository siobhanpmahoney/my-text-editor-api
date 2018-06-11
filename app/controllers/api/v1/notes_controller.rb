class Api::V1::NotesController < ApplicationController

  def index
    @notes = Note.all
    render json: @notes
  end

  def create
    @note = Note.create(note_params)
    render json: @note
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  private

  def note_params
    params.require(:note).permit(:id, :title, :content, :user_id)
  end


end
