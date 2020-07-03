require 'rails_helper'

RSpec.describe 'Pets index page' do
  it 'displays all pets to the user' do
    shelter_1 = Shelter.create!(name: 'Pets, Pets, Pets', address: '123 Easy St', city: 'Denver', state: 'CO', zip: '80204')
    shelter_2 = Shelter.create!(name: 'Got A Lotta Pets', address: '456 EzPz Ln', city: 'LVegas', state: 'NV', zip: '12345')
    pet_1 = shelter_1.pets.create!(name: 'Charles Barkley', age: 3, sex: 'Male', image: 'rhodesian.jpg', description: 'Rhodesian Ridgeback')
    pet_2 = shelter_1.pets.create!(name: 'Karl Barx', age: 2, sex: 'Male', image: 'airedale.jpg', description: 'Airedale Terrier')
    pet_3 = shelter_2.pets.create!(name: 'Sarah Jessica Barker', age: 4, sex: 'Female', image: 'dalmation.jpg', description: 'Dalmation')

    visit '/pets'

    expect(page).to have_css("img[src*='rhodesian.jpg']")
    expect(page).to have_content(pet_1.name)
    expect(page).to have_content("Shelter: #{shelter_1.name}")
    expect(page).to have_css("img[src*='airedale.jpg']")
    expect(page).to have_content(pet_2.name)
    expect(page).to have_content("Shelter: #{shelter_1.name}")
    expect(page).to have_css("img[src*='dalmation.jpg']")
    expect(page).to have_content(pet_3.name)
    expect(page).to have_content("Shelter: #{shelter_2.name}")
  end
end
