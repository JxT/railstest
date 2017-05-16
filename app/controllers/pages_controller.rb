class PagesController < ApplicationController

	def index

		# For global rank:
		# Add all rankings, girl with lowest number = highest rank

		girls = Hash.new(0) # Initialise hash map

		# Get each ranking
		Ranking.find_each do |ranking|
			girls[ranking.girl_id] += ranking.rank;
		end
		
		@globalRanking = girls.sort_by { |girl_id, rank| rank }

	end
end
