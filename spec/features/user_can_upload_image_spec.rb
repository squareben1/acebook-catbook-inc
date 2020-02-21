require 'rails_helper'

RSpec.feature 'Timeline', type: :feature do
  scenario 'user can submit post with image attached' do
    sign_up
    click_link 'New post'
    page.attach_file("Image", Rails.root + 'app/assets/images/paw.png')
    click_button 'Submit'
    expect(page.find('#img')['src']).to have_content 'paw.png'
  end 
end 