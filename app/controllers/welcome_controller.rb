class WelcomeController < ApplicationController
  def home
    @videos = Video.all
    @video = Video.new
  end
end
