class CommentsController < ApplicationController
	before_filter except: [:create]
	
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to @post
	end
	def comment_params
		params.require(:comment).permit(:post_id, :comment, :body)
	end
	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		respond_to do |format|
			format.html { redirect_to :back}
			format.json { head :no_content }
		end
	end
end
