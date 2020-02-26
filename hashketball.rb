# Write your code here!

def game_hash
  hash = {
    :home => {
              :team_name  =>  "Brooklyn Nets",
              :colors     =>  ["Black","White"],
              :players    =>  [
                                {
                                  :player_name  => "Alan Anderson",
                                  :number       =>  0,
                                  :shoe         =>  16,
                                  :points       =>  22,
                                  :rebounds     =>  12,
                                  :assists      =>  12,
                                  :steals       =>  3,
                                  :blocks       =>  1,
                                  :slam_dunks   =>  1
                                },
                                {
                                  :player_name  =>  "Reggie Evans",
                                  :number       =>  30,
                                  :shoe         =>  14,
                                  :points       =>  12,
                                  :rebounds     =>  12,
                                  :assists      =>  12,
                                  :steals       =>  12,
                                  :blocks       =>  12,
                                  :slam_dunks   =>  7
                                },
                                {
                                  :player_name  =>  "Brook Lopez",
                                  :number       =>  11,
                                  :shoe         =>  17,
                                  :points       =>  17,
                                  :rebounds     =>  19,
                                  :assists      =>  10,
                                  :steals       =>  3,
                                  :blocks       =>  1,
                                  :slam_dunks   =>  15
                                },
                                {
                                  :player_name  =>  "Mason Plumlee",
                                  :number       =>  1,
                                  :shoe         =>  19,
                                  :points       =>  26,
                                  :rebounds     =>  11,
                                  :assists      =>  6,
                                  :steals       =>  3,
                                  :blocks       =>  8,
                                  :slam_dunks   =>  5
                                },
                                {
                                  :player_name  =>  "Jason Terry",
                                  :number       =>  31,
                                  :shoe         =>  15,
                                  :points       =>  19,
                                  :rebounds     =>  2,
                                  :assists      =>  2,
                                  :steals       =>  4,
                                  :blocks       =>  11,
                                  :slam_dunks   =>  1
                                }
              ]
    },
    :away => {
              :team_name  => "Charlotte Hornets",
              :colors     => ["Turquoise", "Purple"],
              :players    =>  [
                                {
                                  :player_name  =>  "Jeff Adrien",
                                  :number       =>  4,
                                  :shoe         =>  18,
                                  :points       =>  10,
                                  :rebounds     =>  1,
                                  :assists      =>  1,
                                  :steals       =>  2,
                                  :blocks       =>  7,
                                  :slam_dunks   =>  2
                                },
                                {
                                  :player_name  =>  "Bismack Biyombo",
                                  :number       =>  0,
                                  :shoe         =>  16,
                                  :points       =>  12,
                                  :rebounds     =>  4,
                                  :assists      =>  7,
                                  :steals       =>  22,
                                  :blocks       =>  15,
                                  :slam_dunks   =>  10
                                },
                                {
                                  :player_name  =>  "DeSagna Diop",
                                  :number       =>  2,
                                  :shoe         =>  14,
                                  :points       =>  24,
                                  :rebounds     =>  12,
                                  :assists      =>  12,
                                  :steals       =>  4,
                                  :blocks       =>  5,
                                  :slam_dunks   =>  5
                                },
                                {
                                  :player_name  =>  "Ben Gordon",
                                  :number       =>  8,
                                  :shoe         =>  15,
                                  :points       =>  33,
                                  :rebounds     =>  3,
                                  :assists      =>  2,
                                  :steals       =>  1,
                                  :blocks       =>  1,
                                  :slam_dunks   =>  0
                                },
                                {
                                  :player_name  =>  "Kemba Walker",
                                  :number       =>  33,
                                  :shoe         =>  15,
                                  :points       =>  6,
                                  :rebounds     =>  12,
                                  :assists      =>  12,
                                  :steals       =>  7,
                                  :blocks       =>  5,
                                  :slam_dunks   =>  12
                                }
              ]
      }
  }
end

def num_points_scored(player_name)
  home_counter = 0
  while home_counter < game_hash[:home][:players].length do
    if player_name == game_hash[:home][:players][home_counter][:player_name]
        score = game_hash[:home][:players][home_counter][:points]
    end
    home_counter += 1
  end
  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
    if player_name == game_hash[:away][:players][away_counter][:player_name]
        score = game_hash[:away][:players][away_counter][:points]
    end
    away_counter += 1
  end
  score
end

def shoe_size(player_name)
  home_counter = 0
  while home_counter < game_hash[:home][:players].length do
    if player_name == game_hash[:home][:players][home_counter][:player_name]
        shoe = game_hash[:home][:players][home_counter][:shoe]
    end
    home_counter += 1
  end
  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
    if player_name == game_hash[:away][:players][away_counter][:player_name]
        shoe = game_hash[:away][:players][away_counter][:shoe]
    end
    away_counter += 1
  end
  shoe
end

def team_colors(team_name)
    if team_name == game_hash[:home][:team_name]
        colors = game_hash[:home][:colors]
    end
    if team_name == game_hash[:away][:team_name]
        colors = game_hash[:away][:colors]
    end
  colors
end

def team_names
  my_array = []
  my_array.push(game_hash[:home][:team_name])
  my_array.push(game_hash[:away][:team_name])
  my_array
end

def player_numbers(team_name)
  jersey_number = []
  if team_name == game_hash[:home][:team_name]
    home_counter = 0
    while home_counter < game_hash[:home][:players].length do
      jersey_number.push(game_hash[:home][:players][home_counter][:number])
      home_counter += 1
    end
  end

  if team_name == game_hash[:away][:team_name]
    away_counter = 0
    while away_counter < game_hash[:away][:players].length do
      jersey_number.push(game_hash[:away][:players][away_counter][:number])
      away_counter += 1
    end
  end

  jersey_number

end

def player_stats(player_name)
  home_counter = 0
  while home_counter < game_hash[:home][:players].length do
    if player_name == game_hash[:home][:players][home_counter][:player_name]
        stats = game_hash[:home][:players][home_counter]
    end
    home_counter += 1
  end
  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
    if player_name == game_hash[:away][:players][away_counter][:player_name]
        stats = game_hash[:away][:players][away_counter]
    end
    away_counter += 1
  end

  stats.reject {|key, value| key == :player_name}

end

def big_shoe_rebounds()
  home_counter = 0
  shoes = []
  while home_counter < game_hash[:home][:players].length do
    shoes << game_hash[:home][:players][home_counter][:shoe]
    home_counter += 1
  end

  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
     shoes << game_hash[:away][:players][away_counter][:shoe]
     away_counter += 1
  end
  biggest_shoe = shoes.max

  player_counter = 0
  while player_counter < game_hash[:home][:players].length do
    if game_hash[:home][:players][player_counter][:shoe] == biggest_shoe
      result = game_hash[:home][:players][player_counter][:rebounds]
    end
    player_counter += 1
  end

  player_counter_away = 0
  while player_counter_away < game_hash[:away][:players].length do
    if game_hash[:away][:players][player_counter_away][:shoe] == biggest_shoe
      result = game_hash[:away][:players][player_counter_away][:rebounds]
    end
    player_counter_away += 1
  end

result

end

def most_points_scored
  home_counter = 0
  points = []
  while home_counter < game_hash[:home][:players].length do
    points << game_hash[:home][:players][home_counter][:points]
    home_counter += 1
  end

  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
     points << game_hash[:away][:players][away_counter][:points]
     away_counter += 1
  end
  max_points = points.max

  player_counter = 0
  while player_counter < game_hash[:home][:players].length do
    if game_hash[:home][:players][player_counter][:points] == max_points
      result = game_hash[:home][:players][player_counter][:player_name]
    end
    player_counter += 1
  end

  player_counter_away = 0
  while player_counter_away < game_hash[:away][:players].length do
    if game_hash[:away][:players][player_counter_away][:points] == max_points
      result = game_hash[:away][:players][player_counter_away][:player_name]
    end
    player_counter_away += 1
  end

result

end


def winning_team
  home_sum = 0
  home_counter = 0
  while home_counter < game_hash[:home][:players].length do
    home_sum +=  game_hash[:home][:players][home_counter][:points]
    home_counter += 1
  end

  away_sum = 0
  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
     away_sum += game_hash[:away][:players][away_counter][:points]
     away_counter += 1
  end
  both_teams_points_array = []
  both_teams_points_array << home_sum
  both_teams_points_array << away_sum
  result = both_teams_points_array.max

  if result == home_sum
    winner = game_hash[:home][:team_name]
  else
    winner = game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  all_names = []
  home_counter = 0
  while home_counter < game_hash[:home][:players].length do
    all_names <<  game_hash[:home][:players][home_counter][:player_name]
    home_counter += 1
  end

  away_counter = 0
  while away_counter < game_hash[:away][:players].length do
    all_names << game_hash[:away][:players][away_counter][:player_name]
     away_counter += 1
  end

  all_names.max_by(&:length) #// This will select the longest string in the array
end

def long_name_steals_a_ton?
  all_steals = []
  home_counter = 0
  home_players = game_hash[:home][:players]
  while home_counter < home_players.length do
    all_steals <<  game_hash[:home][:players][home_counter][:steals]
    home_counter += 1
  end

  away_counter = 0
  away_players = game_hash[:away][:players]
  while away_counter < away_players.length do
    all_steals << away_players[away_counter][:steals]
     away_counter += 1
  end
  max_steal = all_steals.max

  away_steals_counter = 0
  while away_steals_counter < away_players.length do
    if max_steal == away_players[away_steals_counter][:steals]
     return true
    end
    away_steals_counter += 1
  end
end
