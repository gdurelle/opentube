class Video < ActiveRecord::Base
  mount_uploader :video, VideoUploader

  before_validation :compute_hash, if: ->{ video.present? }
  validates :md5hash, uniqueness: true, on: :create
  validates :video, presence: true

  def compute_hash
    self.md5hash = Digest::MD5.hexdigest(video.read)
  end
end
