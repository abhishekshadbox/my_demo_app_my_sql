require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/news", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # News. As you add validations to News, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      News.create! valid_attributes
      get news_index_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      news = News.create! valid_attributes
      get news_url(news)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_news_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      news = News.create! valid_attributes
      get edit_news_url(news)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new News" do
        expect {
          post news_index_url, params: { news: valid_attributes }
        }.to change(News, :count).by(1)
      end

      it "redirects to the created news" do
        post news_index_url, params: { news: valid_attributes }
        expect(response).to redirect_to(news_url(News.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new News" do
        expect {
          post news_index_url, params: { news: invalid_attributes }
        }.to change(News, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post news_index_url, params: { news: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested news" do
        news = News.create! valid_attributes
        patch news_url(news), params: { news: new_attributes }
        news.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the news" do
        news = News.create! valid_attributes
        patch news_url(news), params: { news: new_attributes }
        news.reload
        expect(response).to redirect_to(news_url(news))
      end
    end

    context "with invalid parameters" do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        news = News.create! valid_attributes
        patch news_url(news), params: { news: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested news" do
      news = News.create! valid_attributes
      expect {
        delete news_url(news)
      }.to change(News, :count).by(-1)
    end

    it "redirects to the news list" do
      news = News.create! valid_attributes
      delete news_url(news)
      expect(response).to redirect_to(news_index_url)
    end
  end
end
