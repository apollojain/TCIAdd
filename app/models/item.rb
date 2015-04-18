class Item < ActiveRecord::Base
	# validates_length_of :title, minumum: 1
	has_many :comments
	validates_length_of :title, minimum: 1, too_short: 'please enter at least 1 character'
	validates_length_of :subtitle, minimum: 1, too_short: 'please enter at least 1 character'
	validates_length_of :code, minumum: 1, maximum: 6
	validates_format_of :code, :with => /^[A-Za-z\d_]+$/,  :multiline => true
end