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

def num_points_scored(player_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == player_name
        return player[:points]
      end
 end
 end
 end
 
 # same logic as above diffrent key to call
def shoe_size(player_name)
  game_hash.each do |team, team_stats|
    team_stats[:players].each do |player|
      
      if player[:player_name] == player_name
        return player[:shoe]
      end
    end
  end
end

# if it is the nets it should return one set of colorswhile if not it return Hornets colors
#pre: we have a team name and want to know the colors
#post: if the team name matches one return the correct colors
#access the key of the color if it matches the name passed into it Brooklyn Nets => Black and White 

def team_colors(team_name)
  if team_name == "Brooklyn Nets"
   game_hash[:home][:colors]
 else
   game_hash[:away][:colors]
  end
end

def team_names
  game_hash.map do |team, team_stats|
  team_stats[:team_name]
end  
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

num_array = []

game_hash.each do |team, team_stats|
   if team_stats[:team_name] == team_name
     team_stats.each do |k, v|
      if k == :players 
        v.each do |stats|
          num_array << stats[:number]
      end
    end
  end
end
end
#the final array should be the last thing returned before program ends
num_array
end

#similar to the previous example we must isolate a player and return the stats 

def player_stats(player)
  game_hash.each do |team, team_info|
      team_info.each do |keys, values|
        if keys == :players 
         values.each do |stats|
            if player == stats[:player_name]
              return stats
          end
        end
      end
    end
  end
end
  #odd that 
#big shoe rebound is the team numbers with an extra step 


def big_shoe_rebounds()

shoe_size = 0
rebounds = 0

game_hash.each do |team, team_stats|
   team_stats[:players].each do |stats|
      if stats[:shoe] > shoe_size
        shoe_size = stats[:shoe]
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



