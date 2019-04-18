class WelcomeController < ApplicationController
  def index
    set_defaults
  end

  private

  def set_defaults
    @cronuts_url = allowable[:cronuts_url] || t('welcome.index.default_cronut_url')
    @donuts_url  = allowable[:donuts_url]  || t('welcome.index.default_donut_url')
  end

  ALLOWABLE = %w[cronuts_url donuts_url].freeze

  def allowable
    params.permit(ALLOWABLE)
  end
end
