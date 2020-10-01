class HackerNewsController < ApplicationController
  
  def initialize
    @storiesService = StoriesService.new
    @commentsService = CommentsService.new
  end

  def index
    @stories = @storiesService.fetch_top(15).sort_by { |story| -story.time }
  end
  
  def search
    redirect_to "/" if params[:query].empty?
    @stories = @storiesService.search(params[:query])
  end

  def relevant_comments_json
    render json: [] if params[:story_id].empty?

    relavant_comments = @commentsService.fetch_relevant_comments(params[:story_id])
    render json: relavant_comments
  end
end
