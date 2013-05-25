class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def search
    query = params[:q]
    @stories = Story.search_for query
  end
end
