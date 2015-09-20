class CommentsController < ApplicationController
  def create
    image = Image.find_by(params[:image_id])
    image.comments.create(params.require(:comment).permit(:body))
    redirect_to image_path(image)
  end
end
