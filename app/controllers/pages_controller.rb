class PagesController < ApplicationController
  def index
    @jokes = Joke.published.order("created_at DESC").page params[:page]
  end
end
