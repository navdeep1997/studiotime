class Rating < ApplicationRecord
	belongs_to :user
	belongs_to :listing
end