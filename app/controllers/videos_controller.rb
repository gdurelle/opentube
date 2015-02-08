class VideosController < ApplicationController
  def create
    video = Video.new(video_attributes)
    video.save!
    # u.avatar.url # => '/url/to/file.png'
    # u.avatar.current_path # => 'path/to/file.png'
    # u.avatar.identifier # => 'file.png'

    redirect_to root_path
  end

  private

  def video_attributes
    params.require(:video).permit(:video, :original_filename, :content_type, :headers)
  end
end
