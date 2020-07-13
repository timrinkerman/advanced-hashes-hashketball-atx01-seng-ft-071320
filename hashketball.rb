# Write your code below game_hash
require "pry"

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def find_player(player)
game_hash.each do |team, team_info|
  team_info[:players].each do |players|
    if player == players[:player_name]
      return players
end
end
end
end


def num_points_scored(player_name)
   players = find_player(player_name)
        return players[:points]
    end
 # same logic as above diffrent key to call

def shoe_size(player_name)
 player = find_player(player_name)
  return player[:shoe]  
  
end  
  
# if it is the nets it should return one set of colors. while if not, it return Hornets colors
#pre: we have a team name and want to know the colors
#post: if the team name matches one return the correct colors
#access the key of the color if it matches the name passed into it Brooklyn Nets => Black and White 

def team_colors(team_name)
  if team_name == game_hash[:home][:team_name]
   game_hash[:home][:colors]
 else
   game_hash[:away][:colors]
  end
end

def team_names
  teams = []
  game_hash.each do |team, team_info|
    teams << team_info[:team_name]
  end
teams
end
  

#pre: takes in a team name
#post: returns the jersey numbers that correspond with the team name
#simialr to the points and shoe size but for the team not just by player 


#an array to push the info into 
#iterate over the entire hash
#isolate single team
#iterate over that teams stats 
#if weve entered into the player for their values index push the number stat into the empty array  

def player_numbers(team_name)
    team_numbers = []
    game_hash.each do |team, team_info|
        if team_info[:team_name] == team_name
        team_info[:players].each do |stats|
        team_numbers << stats[:number]
end
end
end
team_numbers
end


#similar to the previous example we must isolate a player and return the stats 


def player_stats(player)
   players = find_player(player)
    if players[:player_name] == player
      return players
    end
  end

    
    
#First, find the player with the largest shoe size
#Then, return that player's number of rebounds
#Remember to think about return values here.


def big_shoe_rebounds()
 current_shoe = 0
 rebounds = 0
 game_hash.each do |team, team_info|
   team_info[:players].each do |stats|
    if stats[:shoe] > current_shoe
      current_shoe = stats[:shoe] 
      rebounds = stats[:rebounds]
end     
end
end
rebounds
end

def most_points_scored
  points = 0
  player = ""
game_hash.each do |team, team_stats|
   team_stats[:players].each do |stats|
      if stats[:points] > points
        points = stats[:points]
        player = stats[:player_name]
      end
    end
  end
puts "#{player} had #{points} points!"
end


 def long_name_steals_a_ton
  name = ""
  rebound = 0
game_hash.each do |team, team_info|
  team_info[:players].each do |stats|
    value_2 = stats[:player_name]
      if value_2.length > name.length
        name = value_2
      end
      if stats[:rebounds] > rebound
        rebound = stats[:rebounds]
        if rebound == stats[:player_name][:rebounds]
        return true
        binding.pry
        end
    end
  end
end
end


