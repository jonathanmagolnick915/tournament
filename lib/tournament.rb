class Tournament

	attr_reader :teams, :seeds

	def initialize
		@teams = []
		@seeds = []
	end

	def add_team(name)
		@teams << name
	end

	def list_teams
		puts "Teams:"
		@teams.each do |team|
			puts "#{team}"
		end
	end

	def list_seeds
		puts "Seeds:"
		@seeds.each_with_index do |team, i|
			puts "#{i+1}. #{team}"
		end
	end

	def generate_seeds
		@seeds = @teams.shuffle
	end

	def generate_matchup
		puts "Matchups:"
		if @seeds.length.odd?
			i = 1
			n = @seeds.length
			puts "(#{i}) #{@seeds[0]} has a bye."
			((@seeds.length - 1) / 2).times do
				puts "(#{i+1}) #{@seeds[i]} versus (#{n}) #{@seeds[-i]}"
				n -= 1
				i += 1
			end
		else
			i = 0
			n = @seeds.length
			(@seeds.length / 2).times do
				puts "(#{i+1}) #{@seeds[i]} versus (#{n}) #{@seeds[-(i+1)]}"
				n -= 1
				i += 1
			end
		end

	end
end
