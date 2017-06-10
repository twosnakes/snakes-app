class SnakesController < ApplicationController

  def index
    @snakes = Snake.all
  end

  def new
  end

  def create
    snake = Snake.new(
                      name: params[:name],
                      age: params[:age],
                      image: params[:image],
                      species: param[:species]
                      )

    snake.save

    redirect_to "/snakes/#{snake.id}" 
  end

  def show
    @snake = Snake.find(params[:id])
  end

  def edit
    @snake = Snake.find(params[:id])
  end

  def update
    snake = Snake.find(params[:id])
    snake.assign_attributes(
                            name: params[:name],
                            age: params[:age],
                            species: params[:species],
                            image: params[:image]
                            )
    snake.save

    redirect_to "/snakes/#{snake.id}"
  end

  def destroy
    snake = Snake.find(params[:id])
    snake.destroy

    redirect_to '/'
  end


end
