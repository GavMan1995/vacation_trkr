require 'rails_helper'

RSpec.describe Trip, type: :model do
  describe 'attributes' do
    it {should respond_to :name}
    it {should respond_to :start}
    it {should respond_to :end}
  end

  describe 'sorting' do
    it 'order by name' do
      trip1 = Trip.create(name: 'Hawaii')
      trip2 = Trip.create(name: 'Cancun')
      trip3 = Trip.create(name: 'Ireland')
      trips = Trip.by_name

      expect(trips.first.name).to eq(trip2.name)
      expect(trips[1].name).to eq(trip1.name)
      expect(trips.last.name).to eq(trip3.name)
    end
  end
end
