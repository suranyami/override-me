require 'rails_helper'

RSpec.describe WelcomeController, type: :controller do
  describe 'GET index' do
    context 'without parameters' do
      it 'assigns @cronuts_url' do
        get :index
        expect(assigns(:cronuts_url)).to be_a String
        expect(assigns(:cronuts_url)).to_not be_empty
        expect(assigns(:cronuts_url)).to eq I18n.t('welcome.index.default_cronut_url')
      end

      it 'assigns @donuts_url' do
        get :index
        expect(assigns(:donuts_url)).to be_a String
        expect(assigns(:donuts_url)).to_not be_empty
        expect(assigns(:donuts_url)).to eq I18n.t('welcome.index.default_donut_url')
      end

      it 'renders the index template' do
        get :index
        expect(response).to render_template('index')
      end
    end

    context 'with parameters' do
      let(:cronuts_url) { 'http://www.google.com?donuts' }
      it 'assigns the param to cruonuts_url' do
        get :index, params: { cronuts_url: cronuts_url }
        expect(assigns(:cronuts_url)).to eq cronuts_url
      end
    end
  end
end
