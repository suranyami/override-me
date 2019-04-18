require 'rails_helper'
require 'spec_helper'

feature 'rendering widget' do
  scenario 'with no params' do
    visit welcome_index_path

    expect(page).to have_content('cronuts')
  end
end
