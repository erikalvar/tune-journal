class Api::SetlistSongsController < ApplicationController
  before_action :authenticate_user

  def create
    @setlist_song = SetlistSong.new(
      setlist_id: params[:setlist_id],
      song_id: params[:song_id],
    )
    if @setlist_song.save
      render json: { message: "setlist_song created" }
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @setlist_song = SetlistSong.where(setlist_id: params[:setlist_id], song_id: params[:song_id]).first
    @setlist_song.destroy
    render json: { message: "setlist_song successfully deleted." }
  end
end
