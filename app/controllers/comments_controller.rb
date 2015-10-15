class CommentsController < ApplicationController
  def new
    @film = Film.find(params[:film_id])
    @comment = @film.comments.new
  end

  def create
    @film = Film.find(params[:film_id])
    @comment = @film.comments.new(comment_params)
    if @comment.save
      redirect_to film_path(@comment.film)
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:name, :post)
  end
end
