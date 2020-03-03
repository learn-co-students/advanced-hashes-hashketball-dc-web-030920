# Write your code here!
require "pry"
# rspec spec/hashketball_spec.rb -e game_hash

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => [
        {:player_name => "Alan Anderson",
         :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1 
         },
         {
         :player_name => "Reggie Evans",
         :number => 30,
         :shoe => 14,
         :points => 12,
         :rebounds => 12,
         :assists => 12,
         :steals => 12,
         :blocks => 12,
         :slam_dunks => 7
         },
         {
         :player_name => "Brook Lopez",
         :number => 11,
         :shoe => 17,
         :points => 17,
         :rebounds => 19,
         :assists => 10,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 15
         },
         {
         :player_name => "Mason Plumlee",
         :number => 1,
         :shoe => 19,
         :points => 26,
         :rebounds => 11,
         :assists => 6,
         :steals => 3,
         :blocks => 8,
         :slam_dunks => 5 
         },
         {
         :player_name => "Jason Terry",
         :number => 31,
         :shoe => 15,
         :points => 19,
         :rebounds => 2,
         :assists => 2,
         :steals => 4,
         :blocks => 11,
         :slam_dunks => 1 
         }
       ]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple" ],
      :players => [
        {:player_name => "Jeff Adrien",
           :number => 4,
           :shoe => 18,
           :points => 10,
           :rebounds => 1,
           :assists => 1,
           :steals => 2,
           :blocks => 7,
           :slam_dunks => 2 
           },
           {
           :player_name => "Bismack Biyombo",
           :number => 0,
           :shoe => 16,
           :points => 12,
           :rebounds => 4,
           :assists => 7,
           :steals => 22,
           :blocks => 15,
           :slam_dunks => 10
           },
           {
           :player_name => "DeSagna Diop",
           :number => 2,
           :shoe => 14,
           :points => 24,
           :rebounds => 12,
           :assists => 12,
           :steals => 4,
           :blocks => 5,
           :slam_dunks => 5
           },
           {
           :player_name => "Ben Gordon",
           :number => 8,
           :shoe => 15,
           :points => 33,
           :rebounds => 3,
           :assists => 2,
           :steals => 1,
           :blocks => 1,
           :slam_dunks => 0
           },
           {
           :player_name => "Kemba Walker",
           :number => 33,
           :shoe => 15,
           :points => 6,
           :rebounds => 12,
           :assists => 12,
           :steals => 7,
           :blocks => 5,
           :slam_dunks => 12 
           }
        ]
    }
  }
  game_hash
end

# rspec spec/hashketball_spec.rb -e game_hash num_points_scored
def num_points_scored(name)
  game_hash.each do |place, team|

    team.each do | atribute , data|
          
      if atribute == :players
        data.each do |player|
        # binding.pry
          if player[:player_name ] == name
            return player[:points]
          end
        end
      end
    end
  end
end


# respec spec/hashketball_spec.rb -e shoe_size
def shoe_size(name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute ==  :players
        data.each do |player|
          if name == player[:player_name] 
            return player[:shoe] 
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |place, team|
    if team_name == team[:team_name] 
      return team[:colors]
      # binding.pry
    end
  end
end


def team_names
  game_hash.map do |place, team|
  team[:team_name]
  end
end

# rspec spec/hashketball_spec.rb -e player_numbers
def player_numbers(team_name)
  new_Arr = []
  game_hash.each do |place, team|
    if team_name == team[:team_name]
      team.each do |attribute, data|
        if attribute == :players
          data.each do |player|
             new_Arr.push(player[:number])
            # binding.pry
         end
        end
      end
    end
  end
   new_Arr
end

def player_stats (name)
  stat = {}
  game_hash.each do |place, team|
    team.each do | atribute , data|
      if atribute == :players
        data.each do |player|
          if player[:player_name ] == name
            player.each do |key, value|
              if key != :player_name
                stat[key] = value
              end
            end
           
          end
        end
      end
    end
  end
  stat  
end

def big_shoe_rebounds 
  biggest_shoe = game_hash[:home][:players][0][:shoe]
  biggest_shoe_player = {}
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:shoe] > biggest_shoe
            biggest_shoe_player = player
            biggest_shoe = player[:shoe]
          end
        end
      end
    end
  end
    biggest_shoe_player[:rebounds]
end

def most_points_scored
  most_points = game_hash[:home][:players][0][:points]
  most_points_player = {}
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:points] > most_points
            most_points_player = player
            most_points = player[:points]
            # binding.pry
          end
        end
      end
    end
  end
  most_points_player[:player_name]
end

def winning_team
 home_total = 0 
 away_total = 0
 game_hash.each do |place, team|
   team.each do |attribute, data|
     if attribute == :players
       data.each do |player|
         if place == :home 
           home_total += player[:points]
         else
           away_total += player[:points]
         end
         
       end
      end
    end
 end
 if home_total > away_total
   game_hash[:home][:team_name]
 else
   game_hash[:away][:team_name]
 end
end

def player_with_longest_name
  longest_name = game_hash[:home][:players][0][:player_name]
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name].length > longest_name.length
            longest_name = player[:player_name]
          end
        end
      end
    end
  end
  return longest_name
end

def long_name_steals_a_ton?
  most_steals = game_hash[:home][:players][0][:steals]
  name = ""
  game_hash.each do | place, team |
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:steals] > most_steals
            most_steals = player[:steals] 
            name = player[:player_name]
          end
        end
      end
    end
  end
  if name == player_with_longest_name
    return true 
  end
end












