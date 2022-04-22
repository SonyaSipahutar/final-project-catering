require 'rails_helper'

RSpec.describe "orders/show", type: :view do
  before(:each) do
    @order = assign(:order, Order.create!(
      total_price: 2.5,
      status: "Status",
      customer: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end
