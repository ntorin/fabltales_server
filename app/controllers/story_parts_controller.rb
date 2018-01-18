class StoryPartsController < ApplicationController
  before_action :set_story_part, only: [:show, :update, :destroy]

  # GET /story_parts
  def index
    @story_parts = StoryPart.all

    render json: @story_parts
  end

  # GET /story_parts/1
  def show
    render json: @story_part
  end

  # POST /story_parts
  def create
    @story_part = StoryPart.new(story_part_params)

    if @story_part.save
      render json: @story_part, status: :created, location: @story_part
    else
      render json: @story_part.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /story_parts/1
  def update
    if @story_part.update(story_part_params)
      render json: @story_part
    else
      render json: @story_part.errors, status: :unprocessable_entity
    end
  end

  # DELETE /story_parts/1
  def destroy
    @story_part.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_story_part
      @story_part = StoryPart.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def story_part_params
      params.require(:story_part).permit(:user_id, :story_id, :part)
    end
end
