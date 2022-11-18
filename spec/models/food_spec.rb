require 'rails_helper'

RSpec.describe Food, type: :model do
  new_food = Food.new(name: 'banana', measurement_unit: 'dozen', price: 2)
  subject { new_food }

  before { subject.save }

  it 'name should not be blank' do
    subject.name = 'banana'
    expect(subject.name).to eq 'banana'
  end

  it 'measurement unit field should not be blank' do
    subject.measurement_unit = 'dozen'
    expect(subject.measurement_unit).to eq 'dozen'
  end

  it 'price must be an integer greater than or equal to 0' do
    subject.price = 2
    expect(subject.price).to be >= 0
  end
end
