require 'rails_helper'

RSpec.describe "items/show", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "title",
      :subtitle => "subtitle",
      :code => "code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/title/)
    expect(rendered).to match(/subtitle/)
    expect(rendered).to match(/code/)
    
  end
end
