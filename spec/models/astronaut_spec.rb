require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'Class Methods' do
    it ".average_age" do
      astro1 = Astronaut.create!(
        name: 'Neil Armstrong',
        age: 37,
        job: 'Commander'
      )

      astro2 = Astronaut.create!(
        name: 'Nathan Keller',
        age: 35,
        job: 'Expo'
      )

      astros = Astronaut.all

      expect(astros.average_age).to eq(36.0)
    end
  end
end
