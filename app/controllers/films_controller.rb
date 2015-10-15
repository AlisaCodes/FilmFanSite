class FilmsController < ApplicationController
  def index
    @films = Film.all
    render :index
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film_params)
    if @film.save
      redirect_to films_path
    else
      render :new
    end
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])

    if params[:vote] == 'up'
      @film.votes += 1
      @film.save
      redirect_to films_path
    else
      if @film.update(film_params)
        redirect_to films_path
      else
        render :edit
      end
    end
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to films_path
  end

  private
  def film_params
    params.require(:film).permit(:title, :url, :description, :director, :votes)
  end
end
