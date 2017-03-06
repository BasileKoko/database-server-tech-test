require 'spec_helper'

feature 'Get' do
  it 'return the set pair' do
    visit '/get?name'
    expect(page).to have_content 'name'
  end
end
