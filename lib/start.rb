require './lib/tournament.rb'
require './lib/mainmenu.rb'

class World
	include Mainmenu

	attr_accessor :tournament

	def initialize
		@tournament = Tournament.new()
	end

	def start
		main_menu
	end

end

World.new.start
