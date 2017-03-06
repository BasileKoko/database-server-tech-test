require 'spec_helper'

feature 'Set' do
  it 'return the set pair' do
    visit '/set?name=user'
    expect(page).to have_content 'name=user'
  end
end
