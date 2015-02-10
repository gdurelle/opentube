require 'rails_helper'

RSpec.describe VideosController, type: :controller do
  describe "POST #create" do
    # http://api.rubyonrails.org/classes/ActionDispatch/TestProcess.html#method-i-fixture_file_upload
    it "redirects to root_path" do
      post :create, video: { video: fixture_file_upload('spec/fixtures/lorem_ipsum.mov') }
      expect(response).to redirect_to root_path
    end
    context "when video already exists" do
      it "redirects to root_path with a flash of errors" do
        post :create, video: { video: fixture_file_upload('spec/fixtures/lorem_ipsum.mov') }
        post :create, video: { video: fixture_file_upload('spec/fixtures/lorem_ipsum.mov') }
        expect(response).to redirect_to root_path
      end
    end
    context "with bad params" do
      it "redirects to root_path with a flash of errors" do
        post :create, video: { video: 'plop' }
        expect(response).to redirect_to root_path
      end
    end
  end
end
