require 'rails_helper'

RSpec.describe 'Shelters Index Page' do
  it 'Displays all shelters to the user' do
    shelter_1 = Shelter.create(name: 'Pets, Pets, Pets')
    shelter_2 = Shelter.create(name: 'Gotta Lotta Pets')

    visit '/shelters'

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content(shelter_2.name)
  end
end
