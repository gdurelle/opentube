class Video < ActiveRecord::Base
  mount_uploader :video, VideoUploader

  before_validation :compute_hash
  validates :md5hash, uniqueness: true, on: :create
  validates :md5hash, :video, presence: true

  def compute_hash
    self.md5hash = Digest::MD5.hexdigest(self.video.read)
  end
end
