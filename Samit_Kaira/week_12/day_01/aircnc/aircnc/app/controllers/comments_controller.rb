class CommentsController < ApplicationController
  def index
  end
  
  def create
    @comment = Comment.create(comment_params)

    puts "\n\n\n"
    p @comment.to_json
    puts  "\n\n\n"
    respond_to do |f|
      f.html {}
      f.json { render json: @comment.to_json }
    end

  end

  private
    def comment_params
      params.require(:comment).permit(:author, :content, :house_id)
    end

end
