class Listing < ApplicationRecord
	has_many :pictures, as: :imageable
	has_many :ratings
end
