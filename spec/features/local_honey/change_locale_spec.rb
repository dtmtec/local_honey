require 'spec_helper'

feature "Change locale" do
  context "for a private session" do
    let!(:user) { create :user }

    background do
      visit new_user_session_path
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Sign in"
    end

    it "changes the preferred locale of the logged in user" do
      visit private_path

      page.should have_content(t('title', locale: :'pt-BR'))

      within("li[title='#{t('locales.english', locale: :'pt-BR')}']") do
        find('a').click
      end

      page.should have_content(t('title', locale: :en))

      user.reload.locale.should eq('en')
    end

    it "redirects the user back to where it came from" do
      visit example_private_route_path

      within("li[title='#{t('locales.english', locale: :'pt-BR')}']") do
        find('a').click
      end

      current_path.should eq(example_private_route_path)
    end
  end

  context "for a public session" do
    it "changes the locale" do
      visit root_path

      page.should have_content(t('title', locale: :'pt-BR'))

      within("li[title='#{t('locales.english', locale: :'pt-BR')}']") do
        find('a').click
      end

      page.should have_content(t('title', locale: :en))
    end

    it "redirects the user back to where it came from" do
      visit example_route_path

      within("li[title='#{t('locales.english', locale: :'pt-BR')}']") do
        find('a').click
      end

      current_path.should eq(example_route_path)
    end
  end
end
