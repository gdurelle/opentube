class VideosController < ApplicationController
  def create
    video = Video.new(video_attributes)
    if video.valid? && video.save!
      flash[:notice] = 'YEAH'
    else
      flash[:error] = video.errors.full_messages.join(', ')
    end
    redirect_to root_path
  end

  private

  def video_attributes
    params.require(:video).permit(:video, :original_filename, :content_type, :headers)
  end
end
