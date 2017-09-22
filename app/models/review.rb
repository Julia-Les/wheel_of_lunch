class Review < ApplicationRecord
	belongs_to :restaurant
	belongs_to :match
end
