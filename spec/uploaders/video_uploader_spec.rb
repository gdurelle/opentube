require 'carrierwave/test/matchers'

RSpec.describe VideoUploader do
  include CarrierWave::Test::Matchers

  before do
    # VideoUploader.enable_processing = false
    @uploader = VideoUploader.new(Video.new, :video)
    @uploader.store!(File.open("#{Rails.root}/spec/support/test.mov"))
  end

  after {}

  context 'the thumb version' do
    it "should scale down an image to 192 by 192 pixels" do
      expect(@uploader.thumb).to have_dimensions(192, 192)
    end
  end

  it "should make the image readable only to the owner and not executable" do
    expect(@uploader).to have_permissions(0600)
  end
end
