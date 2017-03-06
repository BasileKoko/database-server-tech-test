require 'spec_helper'

feature 'Set and Get' do
  context 'Set' do
    it 'returns the set pair' do
      visit '/set?name=user'
      expect(page).to have_content 'name=user'
    end
  end

  context 'Get' do
   before do
     visit '/set?name=user'
   end
    it 'returns key' do
      visit '/get?name'
      expect(page).to have_content 'name'
    end
    it 'returns value' do
      visit '/get?name'
      expect(page).to  have_content 'user'
    end
  end
end
