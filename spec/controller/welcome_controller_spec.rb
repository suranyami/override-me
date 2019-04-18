require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe 'GET index' do
    it 'assigns @cronuts_url' do
      get :index
      expect(assigns(:cronuts_url)).to be_a String
      expect(assigns(:cronuts_url)).to_not be_empty
    end

    it 'assigns @donuts_url' do
      get :index
      expect(assigns(:donuts_url)).to be_a String
      expect(assigns(:donuts_url)).to_not be_empty
    end


    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
