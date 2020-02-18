class CommentsController < ApplicationController

  def create
    sured = Sured.find(params[:id])
    comment = sured.comments.build(comment_params)
    if comment.save
      redirect_to sured
    else
      flash[:danger] = "コメントをしてください"
      redirect_to sured
    end
  end


  private

def comment_params
    params.require(:comment).permit(:name, :response)
end

end
