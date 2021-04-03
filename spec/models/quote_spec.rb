require 'rails_helper'

describe Quote, type: :model do

  let(:quote) { 
    Quote.new(
      company_name: "Test Company Name",
      contact_name: "John Doe",
      email: "test@email.com",
      product_line: "Standard",
      installation_fee: 0,
      sub_total: 0,
      total: 0,
      building_type: "Residential",
      num_of_floors: 0,
      num_of_apartments: 0,
      num_of_basements: 0,
      num_of_parking_spots: 0,
      num_of_distinct_businesses: 0,
      num_of_elevator_cages: 0,
      num_of_occupants_per_Floor: 0,
      num_of_activity_hours_per_day: 0,
      required_columns: 0,
      required_shafts: 0,
      created_at: Date.today
    )
  }

  it "is valid with valid attributes" do
    expect(quote).to be_valid
  end

  it "is not valid without a company name" do
    quote.company_name = nil

    expect(quote).to_not be_valid
  end

  it "is not valid without a contact name" do
    quote.contact_name = nil
    expect(quote).to_not be_valid
  end

  it "is not valid without a building type" do
    quote.building_type = nil
    expect(quote).to_not be_valid
  end

  it "is not valid without a product line" do
    quote.product_line = nil
    expect(quote).to_not be_valid
  end

  it "is not valid without a creation date" do
    quote.created_at = nil
    expect(quote).to_not be_valid
  end

end
