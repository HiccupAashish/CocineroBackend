class BirdsController < ApplicationController
  before_action :set_bird, only: [:show, :update, :destroy]

  # GET /birds
  def index
    birds = Bird.all

    render json: birds, except: [:created_at, :updated_at]
  end

  # GET /birds/1
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: { id: bird.id, name: bird.name, species: bird.species }
    else
      render json: { message: 'Bird not found' }
    end
  end

  # POST /birds
  def create
    @bird = Bird.new(bird_params)

    if @bird.save
      render json: @bird, status: :created, location: @bird
    else
      render json: @bird.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /birds/1
  def update
    if @bird.update(bird_params)
      render json: @bird
    else
      render json: @bird.errors, status: :unprocessable_entity
    end
  end

  # DELETE /birds/1
  def destroy
    @bird.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bird
      @bird = Bird.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bird_params
      params.require(:bird).permit(:name, :species)
    end
end
