class CommentsController < ApplicationController

  def create
    pro = Product.find(params[:product_id])
    comment = current_user.comments.new(comment_params)
    comment.product_id = pro.id
    if comment.save
      render :json => comment
    else
      render 'products/show'
    end
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    comment = Comment.find(params[:id])
    if comment.destroy
      redirect_to product_path(params[:product_id])
    else
      render 'products/show'
    end
  end


  private
  
  def comment_params
    params.require(:comment).permit(:comment)
  end

end
