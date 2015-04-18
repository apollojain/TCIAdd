require 'spec_helper'

RSpec.describe Item, :type => :model do
  it "adds users" do
  	post1 = Item.create!(title: "is a title", subtitle: "is a subtitle", code: '12Abd')
  	expect{'12Abd'}.to eq('12Abd')
  end
end
