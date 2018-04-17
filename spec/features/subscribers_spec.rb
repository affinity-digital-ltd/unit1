require 'rails_helper'

RSpec.describe "Subscribers", type: :feature do
  describe "signing up with a valid email" do
    it "should be added" do        
      visit root_path
      
      find("[type='email']").set('test@test.com')

      find("input[type='submit']").click

      expect(page).to have_content 'Thank you'
    end
  end

  describe "signing up with an existing email" do
    before do
      create(:subscriber, email: 'test@test.com')
    end

    it "should raise an error" do
      visit root_path
      
      find("[type='email']").set('test@test.com')

      find("input[type='submit']").click

      expect(page).to have_content 'Email has already been taken'
    end
  end
end
