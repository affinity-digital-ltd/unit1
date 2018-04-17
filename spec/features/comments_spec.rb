require 'rails_helper'

RSpec.describe "Comments", type: :feature do
  include OmniauthHelper

  describe "adding a comment with correct info" do
    let(:post) { create(:post) }

    before do
      set_omniauth
      visit post_path(post)
      click_on "Login"
    end

    it "should be added" do
      visit post_path(post)
      fill_in 'Name', with: 'Test'
      fill_in 'Body', with: 'Example text'

      find("input[type='submit']").click

      expect(page).to have_content 'comment has been added'
    end
  end

  describe "adding comment without a name" do
    let(:post) { create(:post) }

    before do
      set_omniauth
      visit post_path(post)
      click_on "Login"
    end

    it "should raise an error" do
      visit post_path(post)
      fill_in 'Body', with: 'Example text'

      find("input[type='submit']").click

      expect(page).to have_content "Name can't be blank"
    end
  end
end
