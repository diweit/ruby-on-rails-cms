class CommentsController < ApplicationController
   
   def create
    @site = Site.find(params[:site_id])
    @comment = @site.comments.create(params[:comment])
    respond_to do |f|
    	    f.html { redirect_to :back }
    	    f.js
    end 
  end
  def destroy
    @site = Site.find(params[:site_id])
    @comment = @site.comments.find(params[:id])
    @comment.destroy
    redirect_to site_path(@site)
  end
end
