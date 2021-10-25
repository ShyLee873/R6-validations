require 'rails_helper'
RSpec.describe Order, type: :model do
  subject { Order.new( product_name: "gears", product_count: 7, customer: FactoryBot.create(:customer))}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a product name" do
    subject.product_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a product count" do
    subject.product_count=nil 
    expect(subject).to_not be_valid
  end
  it "is not valid without a valid customer" do
    subject.customer.first_name = nil
    expect(subject).to_not be_valid
  end
  it "is not valid if product count is not an integer" do
    subject.product_count = "eight"
    expect(subject).to_not be_valid
  end
end
