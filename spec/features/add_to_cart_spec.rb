require 'rails_helper'

RSpec.feature "users can click the 'Add to Cart' button for a product on the home page and in doing so their cart increases by one", type: :feature do
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

  scenario "They click on add to cart for a product and cart increases by 1" do
    visit root_path
    find(:link, "Add", match: :first).click
  end

end
