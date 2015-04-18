require 'rails_helper'

RSpec.describe "items/new", :type => :view do
  before(:each) do
    assign(:item, Item.new(
      :title => "MyString",
      :subtitle => "MyString",
      :code => "MyString"
    ))
  end

  it "renders new item form" do
    render

    assert_select "form[action=?][method=?]", items_path, "post" do

      assert_select "input#item_title[name=?]", "item[title]"

      assert_select "input#item_subtitle[name=?]", "item[subtitle]"

      assert_select "input#item_code[name=?]", "item[code]"
    end
  end
end
