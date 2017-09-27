require '../lib/tournament'

RSpec.describe Tournament do

	let(:tournament){Tournament.new()}

	it "creates a new tournament" do 
		expect(tournament).to be_an_instance_of Tournament 	
	end

	it ".#teams returns the teams in the tournament" do 
		expect(tournament.teams).to eql([])
	end

	it ".#seeds returns a seed in the tournament" do 
		expect(tournament.seeds).to eql([])
	end

	it ".add_team(name) adds a new team in the tournament" do 
		tournament.add_team("Duke")
		tournament.add_team("UNC")
		tournament.add_team("Wake Forest")
		expect(tournament.teams).to eql(["Duke", "UNC", "Wake Forest"])
	end

	it ".list_teams lists all teams in the tournament" do
		tournament.add_team("Duke")
		tournament.add_team("UNC")
		tournament.add_team("Wake Forest")
		expect(tournament.list_teams).to eql(["Duke", "UNC", "Wake Forest"])
	end

	it ".generate_seeds lists seed positions in the tournament" do
		tournament.add_team("Duke")
		tournament.add_team("UNC")
		tournament.add_team("Wake Forest")
		tournament.add_team("UM")
		tournament.add_team("FSU")
		expect(tournament.list_seeds).not_to eql(["Duke", "UNC", "Wake Forest", "UM", "FSU"])
		expect(tournament.seeds).not_to eql(["Duke", "UNC", "Wake Forest", "UM", "FSU"])
	end

end