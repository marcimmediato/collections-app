require 'byebug'
require 'rails_helper'

RSpec.describe Brand, :type => :model do


describe "#decks" do 
  it "can identify the decks associated with itself" do 
    do_things
    expect(@marc_poke.decks).to include(@deck)
  end
end

describe "#unique_category?" do 
  it "will not accept an existing name for a new brand" do 
    do_things
    current_user = @marc 
    brand = Brand.new(category: "Pokemon", owner_id: @marc_coll.id)
    # byebug
    expect(current_user.owner.brands.pluck(:category).include?(brand.category)).to be true
  end
end

end