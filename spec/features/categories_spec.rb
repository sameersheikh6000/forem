require 'spec_helper'

describe 'categories' do
  let!(:category_1) { FactoryBot.create(:category) }
  let!(:forum_1) { FactoryBot.create(:forum, :category => category_1, :title => "Category 1 Forum") }

  let!(:category_2) { FactoryBot.create(:category) }
  let!(:forum_2) { FactoryBot.create(:forum, :category => category_2, :title => "Category 2 Forum") }

  it "sees categorised forums" do
    visit forums_path
    within("#category_#{category_1.id}") do
      expect(page).to have_content(forum_1.title)
    end

    within("#category_#{category_2.id}") do
      expect(page).to have_content(forum_2.title)
    end
  end

  it "can view a category's forums" do
    visit forums_path

    within("#category_#{category_1.id}") do
      click_link category_1.name
    end

    expect(page).to have_content(forum_1.title)
    # page.should_not have_content(forum_2.title)
    expect(page.html).not_to match(forum_2.title)
  end
end
