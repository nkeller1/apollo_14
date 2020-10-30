require 'rails_helper'

RSpec.describe 'Astronaut Index Page' do
  it "lists all astronauts" do
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

    visit '/astronauts'

    expect(page).to have_content(astro1.name)
    expect(page).to have_content(astro1.age)
    expect(page).to have_content(astro1.job)
    expect(page).to have_content(astro2.name)
    expect(page).to have_content(astro2.job)
    expect(page).to have_content(astro2.age)
  end
end
