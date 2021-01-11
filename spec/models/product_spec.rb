require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'it is valid when all fields are present' do
      @category = Category.new(name: "Dinosaur")
      @category.save
      @category.products.create(name: "T-rex", price: 1000, quantity: 3)
      @category.save
      expect(@category).to be_valid
    end

    it 'is not valid without a name' do
      @category = Category.new(name: "Dinosaur")
      @category.save
      @category.products.create(name: nil, price: 1000, quantity: 3)
      @category.save
      expect(@category.errors.messages).to include(:products=>["is invalid"])
    end

    it 'is not valid without a price' do
      @category = Category.new(name: "Dinosaur")
      @category.save
      @category.products.create(name: "T-rex", price: nil, quantity: 3)
      @category.save
      expect(@category.errors.messages).to include(:products=>["is invalid"])
    end

    it 'is not valid without a quantity' do
      @category = Category.new(name: "Dinosaur")
      @category.save
      @category.products.create(name: "T-rex", price: 1000, quantity: nil)
      @category.save
      expect(@category.errors.messages).to include(:products=>["is invalid"])
    end

    it 'is not valid without a category' do
      @product = Product.new(name: "T-rex", price: 1000, quantity: 1)
      @product.save
      expect(@product.errors.messages).to include(:category=>["can't be blank"])
    end

  end
end
