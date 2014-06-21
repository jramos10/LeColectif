require 'spec_helper'
require 'factory_girl'

describe UsersController do

  context 'Get users/new' do
    it 'should get a new user' do
      get :new
      expect(assigns(:user)).to eq(User.new)
    end
  end

  context 'Post user/create' do
    it 'should send new user information to database' do
      attributes = FactoryGirl.attributes_for(:user)

      post :create, user: attributes

      expect(User.find_by_email("anirudh.eka@gmail.com")).to_not be_nil
    end

    it "should redirect to home" do
      attributes = FactoryGirl.attributes_for(:user)

      post :create, user: attributes

      expect(response).to redirect_to root_path
    end
  end
end