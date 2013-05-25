class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    story_params = params.require(:story).permit(:title, :link, :category)
    @story = Story.new(story_params)

    if @story.save
      @story.upvotes += 1
      redirect_to @story
    else
      render 'new'
    end
  end

  def show
    @story = Story.find(params[:id])
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to root_path, notice: "#{@story.title} has been deleted"
  end

  def search
    query = params[:q]
    @stories = Story.search_for query
  end
end
