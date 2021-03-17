class Api::SongTagsController < ApplicationController
  before_action :authenticate_user

  def create
    tag_name = params[:tag_name]
    @song = Song.find(params[:song_id])
    @tag = Tag.find_or_create_by(name: tag_name, user_id: current_user.id)
    @song_tag = SongTag.new({
      song_id: @song.id,
      tag_id: @tag.id,
    })
    if @song_tag.save
      @song = Song.find(params[:song_id])
      render "show.json.jb"
    else
      render json: { errors: @song_tag.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @song_tag = SongTag.find_by(song_id: params[:song_id], tag_id: params[:tag_id])
    @song_tag.destroy
    @song = Song.find(params[:song_id])
    render json: { message: "song_tag successfully deleted." }
  end
end
