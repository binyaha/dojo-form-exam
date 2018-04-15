class RepliesController < ApplicationController

  def create
    @reply = current_user.replies.build(reply_params)
    @reply.article_id = params[:article_id]
    @reply.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @reply = Reply.find(params[:id])
    @reply.destroy
    redirect_back(fallback_location: root_path)
  end

  def edit
    @reply = Reply.find(params[:id])
  end


  private
   def reply_params
    params.require(:reply).permit(:comment, :user_id, :article_id)
   end 
end
