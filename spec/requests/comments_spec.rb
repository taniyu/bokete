require "rails_helper"

describe Comment, type: :request do
  let(:image) { Image.create(url: "http://example.com/", title: "test") }

  describe "POST /images/:id/comments.json" do
    it "create comments" do
      post "/images/#{image.id}/comments.json", comment: { body: "test" }
      expect(response.status).to be 201
    end
  end
end
