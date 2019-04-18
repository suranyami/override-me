class WelcomeController < ApplicationController
  def index
    set_defaults
  end

  private

  def set_defaults
    @cronuts_url = if allowable[:cronuts_url]
      allowable[:cronuts_url]
    else
      t('welcome.index.default_cronut_url')
    end

    @donuts_url = if allowable[:donuts_url]
      allowable[:donuts_url]
    else
      t('welcome.index.default_donut_url')
    end
  end

  ALLOWABLE = %w[cronuts_url donuts_url].freeze

  def allowable
    params.permit(ALLOWABLE)
  end
end
