require 'pry'
def game_hash
  {
  :home =>  { :team_name => "Brooklyn Nets",
              :colors => ["Black", "White"],
              :players =>[
                 {:player_name => "Alan Anderson",
                  :number => 0,
                  :shoe => 16,
                  :points => 22,
                  :rebounds => 12,
                  :assists => 12,
                  :steals => 3,
                  :blocks => 1,
                  :slam_dunks =>1
                        },
              {:player_name => "Reggie Evans",
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks =>7
                        },
              {:player_name => "Brook Lopez",
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks =>15
                        },
              {:player_name => "Mason Plumlee",
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 11,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks =>5
                        },
              {:player_name => "Jason Terry",
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks =>1
   }
  ]
},
   :away => { :team_name => "Charlotte Hornets",
               :colors => ["Turquoise", "Purple"],
               :players =>[{:player_name => "Jeff Adrien",
                           :number => 4,
                           :shoe => 18,
                           :points => 10,
                           :rebounds => 1,
                           :assists => 1,
                           :steals => 2,
                           :blocks => 7,
                           :slam_dunks =>2},
               {:player_name => "Bismack Biyombo",
                           :number => 0,
                           :shoe => 16,
                           :points => 12,
                           :rebounds => 4,
                           :assists => 7,
                           :steals => 22,
                           :blocks => 15,
                           :slam_dunks =>10},
               {:player_name => "DeSagna Diop",
                           :number => 2,
                           :shoe => 14,
                           :points => 24,
                           :rebounds => 12,
                           :assists => 12,
                           :steals => 4,
                           :blocks => 5,
                           :slam_dunks =>5},
                 {:player_name => "Ben Gordon",
                             :number => 8,
                             :shoe => 15,
                             :points => 33,
                             :rebounds => 3,
                             :assists => 2,
                             :steals => 1,
                             :blocks => 1,
                             :slam_dunks =>0},
               {:player_name => "Kemba Walker",
                           :number => 33,
                           :shoe => 15,
                           :points => 6,
                           :rebounds => 12,
                           :assists => 12,
                           :steals => 7,
                           :blocks => 5,
                           :slam_dunks =>12
                           }
                         ]
   }
  }
end

def num_points_scored(names)
  game_hash.each do |where, all_data|
    all_data.each do |catagories,data|
      if catagories ==  :players
        data.each do |player|
          if player[:player_name] == names
            return player[:points]
          end
        end
      end
    end
  end
end

def shoe_size(names)
  game_hash.each { |where, ncp|
    ncp.each { |catagories, info|
      if catagories == :players
        info.each do |player|
          if player[:player_name] == names
            return player[:shoe]
          end
        end
      end
    }
  }
end

def team_colors(team)
  game_hash.each do |where, ncp_data|
      if ncp_data[:team_name] == team
        return ncp_data[:colors]
    end
  end
end

def team_names
  game_hash.map do |place, team|
    team[:team_name]
  end
end

def player_numbers(team_name)
  num_array = []
  game_hash.each do | where, data|
    if data[:team_name] == team_name
      data.each do |ncp, stats|
        if ncp == :players
          stats.each do |player|
            num_array << player[:number]
          end
        end
      end
    end
  end
  num_array
end

def player_stats(name)
  answer = {}
  game_hash.each do |where, data|
    data.each do |ncp, stats|
      if ncp == :players
        stats.each do |player|
          if player[:player_name] == name

            return player.delete_if do |k,v|
              k == :player_name
            end
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  largest_shoe = 0
  rebounds = 0
  name = ""
  game_hash.each do |where, data|
    data.each do |ncp, stats|
      if ncp == :players
        stats.each do |player|
          if largest_shoe < shoe_size(player[:player_name])
             largest_shoe = shoe_size(player[:player_name])
             name= player[:player_name]
          end
        end
      end
    end
  end
  return player_stats(name)[:rebounds]
end

def most_points_scored
  most_points = 0
  name = ""
  game_hash.each do |where, data|
    data.each do |ncp, stats|
      if ncp == :players
        stats.each do |player|
          if most_points < num_points_scored(player[:player_name])
            most_points = num_points_scored(player[:player_name])
            name = player
          end
        end
      end
    end
  end
  return name[:player_name]
end

def winning_team
  max_team = nil
  bkl = 0
  chr = 0
  game_hash.each do |where, data|

  if data[:team_name] == "Brooklyn Nets"
    data.each do |ncp, stats|
      if ncp == :players
        stats.each do |player|
          bkl +=  player[:points]
        end
      end
    end
    else
      data.each do |ncp, stats|
        if ncp == :players
          stats.each do |player|
            chr +=  player[:points]
            end
          end
        end
      end
    end
  if bkl > chr
    return "Brooklyn Nets"
  else
    return "Charlotte Hornets"
  end
end

def player_with_longest_name
  longest_name_length = 0
  longest_name = ""


  game_hash.each do |where,data|
    data.each do |ncp, stats|
      if ncp == :players
        stats.each do |player|
          if longest_name_length < player[:player_name].length
            longest_name_length = player[:player_name].length
             longest_name = player[:player_name]
           end
        end
      end
    end
  end
  longest_name
end

def long_name_steals_a_ton?
  most_steals = 0
  game_hash.each do |where,data|
    data.each do |ncp, stats|
      if ncp == :players
        stats.each do |player|
          if most_steals < player[:steals]
            most_steals = player[:steals]
          end
        end
      end
    end
  end

  if player_stats(player_with_longest_name)[:steals] >= most_steals
    return true
  end
end
