class Api::SongsController < ApplicationController
  before_action :authenticate_user

  def index
    @songs = Song.all.order(:title)
    # @songs = Song.where(user_id: current_user.id).order(:title)
    render "index.json.jb"
  end

  def create
    @song = Song.new(
      user_id: current_user.id,
      title: params[:title],
      composer: params[:composer],
      key: params[:key],
      mode: params[:mode],
      tempo: params[:tempo],
      duration: params[:duration],
      status: params[:status],
      notes: params[:notes],
    )
    if @song.save
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @song = Song.find(params[:id])
    render "show.json.jb"
    # if @song.user_id == current_user.id
    #   render "show.json.jb"
    # else
    #   render json: {}, status: :unauthorized
    # end
  end

  def update
    @song = Song.find(params[:id])
    if @song.user_id == current_user.id
      @song.title = params[:title] || @song.title
      @song.composer = params[:composer] || @song.composer
      @song.key = params[:key] || @song.key
      @song.mode = params[:mode] || @song.mode
      @song.tempo = params[:tempo] || @song.tempo
      @song.duration = params[:duration] || @song.duration
      @song.status = params[:status] || @song.status
      @song.notes = params[:notes] || @song.notes
      if @song.save
        render "show.json.jb"
      else
        render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @song = Song.find(params[:id])
    if @song.user_id == current_user.id
      @song.destroy
      render json: { message: "song successfully deleted." }
    else
      render json: {}, status: :unauthorized
    end
  end
end
