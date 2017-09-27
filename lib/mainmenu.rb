module Mainmenu

	def main_menu
		puts "------------------------------------\nWelcome to My Tournament Generator. Enter a selection:\n1. Enter Team\n2. List Teams\n3. Generate Seeds\n4. List Matchups\n0. Exit Program"
		case gets.chomp.to_i
		when 1 then new_team_menu
		when 2 then list_teams
		when 3 then list_seeds
		when 4 then list_matchup
		when 0 then exit!
		else main_menu
		end
	end

	def new_team_menu
		puts "What's the team name?"
		name = gets.chomp
		@tournament.add_team(name)

		main_menu
	end

	def list_teams
		@tournament.list_teams

		main_menu
	end

	def list_seeds
		@tournament.generate_seeds
		@tournament.list_seeds

		main_menu
	end

	def list_matchup
		@tournament.generate_matchup

		main_menu
	end

end