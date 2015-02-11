class VideosController < ApplicationController
  before_action :load_video, only: %w(show)

  def create
    video = Video.new(video_attributes)
    if video.valid? && video.save!
      flash[:notice] = 'YEAH'
    else
      flash[:error] = video.errors.full_messages.join(', ')
    end
    redirect_to root_path
  end

  def show
  end

  private

  def load_video
    @video = Video.find(params[:id])
  end

  def video_attributes
    params.require(:video).permit(:video)
  end
end
