require 'rails_helper'

RSpec.describe "items/edit", :type => :view do
  before(:each) do
    @item = assign(:item, Item.create!(
      :title => "MyString",
      :subtitle => "Test",
      :code => "MyS8r"
    ))
  end

  it "renders the edit item form" do
    render

    assert_select "form[action=?][method=?]", item_path(@item), "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "input#item_subtitle[name=?]", "item[subtitle]"

      assert_select "input#item_code[name=?]", "item[code]"
    end
  end
end
