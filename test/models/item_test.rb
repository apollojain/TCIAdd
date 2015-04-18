require 'test_helper'
 
class ItemTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should save item with proper parameters" do
	  it = Item.new(:title => 'sa',:subtitle => 'bx', :code =>'cx')
	  assert it.save
	end

  test "should not save item without title" do
	  item = Item.new(:title => '',:subtitle => 'bx', :code =>'h')
	  assert_not item.save
	end
  test "should not save item without subtitle" do
	  item = Item.new(:title => 'asd',:subtitle => '', :code =>'h')
	  assert_not item.save
  end
  test "should not save item with too long code" do
	  item = Item.new(:title => 'sd',:subtitle => 'bx', :code =>'h21982d')
	  assert_not item.save
  end
  test "should not save item with random characters in code" do
	  item = Item.new(:title => 'sd',:subtitle => 'bx', :code =>'h19(*')
	  assert_not item.save
  end
  test "should save item with alphanumerical parameters in the code" do
	  item = Item.new(:title => 'sd',:subtitle => 'bx', :code =>'h9A2fA')
	  assert item.save
  end
end