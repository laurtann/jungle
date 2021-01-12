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

  # SELECT LINK TO CLICK - A CHILD OF CLASS PRODUCT-LINK
  scenario 'Visitor sees show page after clicking on product card' do
    find('.product-link', match: :first).click
    expect(page).to have_css('.products-show')
  end

end
