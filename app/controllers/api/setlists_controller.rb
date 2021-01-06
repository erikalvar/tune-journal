class Api::SetlistsController < ApplicationController
  before_action :authenticate_user

  def index
    @setlists = Setlist.where(user_id: current_user.id).order(:created_at)
    render "index.json.jb"
  end

  def create
    @setlist = Setlist.new(
      user_id: current_user.id,
      name: params[:name],
      event_date: params[:event_date],
      public: params[:public] || FALSE,
    )
    if @setlist.save
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @setlist = Setlist.find(params[:id])
    if @setlist.user_id == current_user.id
      render "show.json.jb"
    else
      render json: {}, status: :unauthorized
    end
  end

  def update
    @setlist = Setlist.find(params[:id])
    if @setlist.user_id == current_user.id
      @setlist.name = params[:name] || @setlist.name
      @setlist.event_date = params[:event_date] || @setlist.event_date
      @setlist.public = params[:public] || @setlist.public
      if @setlist.save
        render "show.json.jb"
      else
        render json: { errors: @event.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @setlist = Setlist.find(params[:id])
    if @setlist.user_id == current_user.id
      @setlist.destroy
      render json: { message: "setlist successfully deleted." }
    else
      render json: {}, status: :unauthorized
    end
  end
end
