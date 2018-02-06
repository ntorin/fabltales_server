class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :update, :destroy]

  # GET /rooms
  def index
    @rooms = Room.all

    render json: @rooms
  end

  # GET /rooms/1
  def show
    render json: @room
  end

  # POST /rooms
  def create
    @room = Room.new(room_params)

    if @room.save
      render json: @room, status: :created, location: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rooms/1
  def update
    if @room.update(room_params)
      render json: @room
    else
      render json: @room.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rooms/1
  def destroy
    @room.destroy
  end

  # POST /rooms/fetch
  def fetch

  end

  # POST /rooms/join_room
  def join_room

  end

  # POST /rooms/leave_room
  def leave_room

  end

  # POST /rooms/start_story
  def start_story

  end

  # POST /rooms/rename_story
  def rename_story

  end

  # POST /rooms/complete_story
  def complete_story

  end

  # POST /rooms/abandon_story
  def abandon_story

  end

  # POST /rooms/add_part
  def add_part
    room = Room.find(params[:room_id])
    story = Story.find(room.story_id)
    passage = story.passage
    passage << ' ' << params[:part]
    story.update(passage: passage)

    ActionCable.server.broadcast("room_#{params[:room_id]}", {part: params[:part], action: 'room_add_part'})
    end_turn(params[:room_id])

    render json: { status: :ok }
  end

  def end_turn(room_id)
    room = Room.find(room_id)

    if room.user_count > room.turn
      room.turn += 1
    else
      room.turn = 1
    end

    room.save

    users = RoomUser.where(room_id: room_id)
    users.each_with_index do |u, i|
      if u.is_turn
        u.is_turn = false
        found = true
        u.save
        if i == users.size - 1
          users[0].is_turn = true
          users[0].save
        else
          users[i+1].is_turn = true
          users[i+1].save
        end

        ActionCable.server.broadcast("room_#{params[:room_id]}", {users: users, action: 'room_end_turn'})

        break
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def room_params
      params.require(:room).permit(:user_id, :story_id, :name, :has_password, :password, :word_limit, :user_count, :turn)
    end
end
