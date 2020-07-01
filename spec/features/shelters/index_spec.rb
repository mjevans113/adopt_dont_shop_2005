require 'rails_helper'

RSpec.describe 'Shelters index page' do
  it 'displays all shelters to the user' do
    shelter_1 = Shelter.create(name: 'Pets, Pets, Pets', address: '123 Easy St', city: 'Denver', state: 'CO', zip: '80204')
    shelter_2 = Shelter.create(name: 'Got A Lotta Pets', address: '456 EzPz Ln', city: 'LVegas', state: 'NV', zip: '12345')

    visit '/shelters'

    expect(page).to have_content(shelter_1.name)
    expect(page).to have_content("Address: #{shelter_1.address} City: #{shelter_1.city} State: #{shelter_1.state} ZIP: #{shelter_1.zip}")
    expect(page).to have_content(shelter_2.name)
    expect(page).to have_content("Address: #{shelter_2.address} City: #{shelter_2.city} State: #{shelter_2.state} ZIP: #{shelter_2.zip}")
  end
end
