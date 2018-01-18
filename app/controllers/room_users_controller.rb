class RoomUsersController < ApplicationController
  before_action :set_room_user, only: [:show, :update, :destroy]

  # GET /room_users
  def index
    @room_users = RoomUser.all

    render json: @room_users
  end

  # GET /room_users/1
  def show
    render json: @room_user
  end

  # POST /room_users
  def create
    @room_user = RoomUser.new(room_user_params)

    if @room_user.save
      render json: @room_user, status: :created, location: @room_user
    else
      render json: @room_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /room_users/1
  def update
    if @room_user.update(room_user_params)
      render json: @room_user
    else
      render json: @room_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /room_users/1
  def destroy
    @room_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_user
      @room_user = RoomUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_user_params
      params.require(:room_user).permit(:room_id, :user_id, :is_master)
    end
end
