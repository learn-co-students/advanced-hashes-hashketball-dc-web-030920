# Write your code here!
require 'pry'

def game_hash
{ :home => {:team_name => "Brooklyn Nets", :colors => ["Black", "White"], :players => [
    { :player_name => "Alan Anderson",
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
  :away => {:team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"], :players => [
      {
        :player_name => "Jeff Adrien",
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
end

#Iterating
# pp game[:away][:players][0][:points]

def num_points_scored(name)
  game_hash.each do |location, data|
    data.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == name
            return player[:points]
          end
        end
      end
    end
  end
end

def shoe_size(name)
  game_hash.each do |location, data|
    data.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == name
            return player[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, data|
    if data[:team_name] == team_name
      return data[:colors]
    end
  end
end

def team_names
  new_array = []
  game_hash.each do |location, data|
    if data[:team_name]
      new_array << data[:team_name]
    end
  end
  return new_array
end

def player_numbers(team_name)
  new_array = Array.new
  game_hash.each do |location, data|
    if data[:team_name] == team_name
      data.each do |attributes, data|
          if attributes == :players
            data.each do |num|
              if num[:number]
                new_array << num[:number]
              end
            end
          end
      end
    end
  end
  new_array
end
  

def player_stats(name)
  stats = {}
  game_hash.each do |location, data|
    data.each do |attributes, data|
      if attributes == :players
        data.each do |player|
          if player[:player_name] == name
            player.reject! { |k| k == :player_name}
            stats = player
          end
        end
      end
    end
  end
  return stats
end

def big_shoe_rebounds
  game_hash.each do |location, data|
      if location == :home
        data.each do |attributes, data|
          if attributes == :players
            data.each do |player|
              if player[:shoe] == 19
                return player[:rebounds]
              end
            end
          end
        end  
      end
  end
end

def most_points_scored
  game_hash.each do |location, data|
    if location == :away
      data.each do |attributes, data|
        if attributes == :players
          data.each do |player|
            if player[:points] == 33
              return player[:player_name]
            end
          end
        end
      end
    end
  end
end
  
def winning_team
  final_points = {}
  game_hash.values.each do |data|
    team_points = 0
    data[:players].each do |players|
      team_points += players[:points]
    end
    final_points[data[:team_name]] = team_points
  end
  final_points.key(final_points.values.max)
end
  
def player_with_longest_name
  name = Array.new
  game_hash.values.each do |data|
    data[:players].each do |player|
      name << player[:player_name]
    end
  end
  name.max_by { |long| long.length}
end

def long_name_steals_a_ton?
  longest_name = {}
  game_hash.values.each do |data|
    data[:players].each do |player|
      longest_name[player[:players]] = player[:steals]
    end
  end
  steals = longest_name.values.max
  longest_name[longest_name.key(steals)] == steals
end
  
  
  
  
  


