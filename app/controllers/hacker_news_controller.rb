class HackerNewsController < ApplicationController
  def initialize()
    @storiesService = HackerNews::Stories.new
  end

  def index
    @stories = @storiesService.fetch_top(15)
  end
  
  def search
    redirect_to "/" if params[:query].empty?
    @stories = @storiesService.search(params[:query])
  end
end
