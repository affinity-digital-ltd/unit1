require 'rails_helper'

RSpec.describe "Posts", type: :feature do
  include BasicAuthHelper
  
  context "adding posts" do
    describe "adding a valid post" do
      it "should be added" do        
        log_in
        visit new_admin_post_path
        
        fill_in 'Title', with: 'title'
        fill_in 'Intro', with: 'intro' 
        fill_in 'Body', with: 'body'

        find("input[type='submit']").click

        expect(page).to have_content 'title'
      end
    end

    describe "adding an invalid post" do
      it "should give feedback on the error" do
        log_in
        visit new_admin_post_path

        fill_in 'Title', with: 'title'
        fill_in 'Body', with: 'body'

        find("input[type='submit']").click

        expect(page).to have_content "Intro can't be blank"
      end
    end
  end

  describe "editing posts" do
    let!(:post) { create(:post) }

    it "should have changed the title" do
      log_in
      visit admin_posts_path

      find("[data-behavior='edit']").click

      fill_in "Title", with: "Test"

      find("input[type='submit']").click

      expect(page).to have_content "Test"
    end
  end

  describe "viewing posts" do
    let!(:post) { create(:post) }

    it "should show all content" do
      visit posts_path

      click_on(post.title)

      expect(page).to have_content post.title
      expect(page).to have_content post.body
      expect(page).to have_content post.intro
    end
  end

  describe "deleting posts" do
    let!(:post) { create(:post) }

    it "should be removed", js: true do
      log_in

      visit admin_root_path

      expect(page).to have_content post.title
      
      find("[data-behavior='delete']").click
      page.driver.browser.switch_to.alert.accept

      expect(page).to_not have_content post.title
    end
  end
end
