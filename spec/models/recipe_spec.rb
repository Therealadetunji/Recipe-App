require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before :each do
    @user = User.new(name: 'john', email: 'john@abc.com', password: 1_234_567, password_confirmation: 1_234_567)
    @user.skip_confirmation!
    @user.save
  end

  it 'is valid' do
    recipe = Recipe.new(name: 'Banana Shake', preparation_time: 20, cooking_time: 0,
                        description: 'Get milk and banana and grind it', public: false, user_id: @user.id)
    expect(recipe).to be_valid
  end

  it 'should not validate without a name' do
    recipe = Recipe.new(name: nil, preparation_time: 20, cooking_time: 0,
                        description: 'Get milk and banana and grind it', public: false, user_id: @user.id)
    expect(recipe.name).to eq(nil)
  end

  it 'should not validate without a description' do
    recipe = Recipe.new(name: 'Banana', preparation_time: 20, cooking_time: 0,
                        description: nil, public: false, user_id: @user.id)
    expect(recipe.description).to eq(nil)
  end
end
