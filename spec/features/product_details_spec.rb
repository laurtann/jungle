require 'rails_helper'

RSpec.feature "Visitor navigates to product page after clicking on product card", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "Visitor sees show page after clicking on product card's image or title" do
    visit root_path
    find('.product-link', match: :first).click
    expect(page).to have_css('.products-show')
  end

  scenario "Visitor sees show page after clicking 'details' button" do
    visit root_path
    find(:link, "Details", match: :first).click
    expect(page).to have_css('.products-show')
  end

end
