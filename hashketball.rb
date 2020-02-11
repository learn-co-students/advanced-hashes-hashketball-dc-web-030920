# Write your code here!
def game_hash 
  hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black","White"],
      :players => [{
        :player_name =>"Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1,
      },
        {
        :player_name =>"Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12,
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7,
      },
      {
        :player_name =>"Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15,
      },
      {
        :player_name =>"Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 11,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5,
      }, 
       {
        :player_name =>"Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1,
      }],
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{
        :player_name =>"Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2,
      },
        {
        :player_name =>"Bismack Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 22,
        :blocks => 15,
        :slam_dunks => 10,
      },
      {
        :player_name =>"DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5,
      },
      {
        :player_name =>"Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0,
      }, 
       {
        :player_name =>"Kemba Walker",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 7,
        :blocks => 5,
        :slam_dunks => 12,
      }],
    },
  }
end 

def num_points_scored (player_name)
  number_of_points = 0 
  index = 0
  while index < game_hash[:home][:players].length do
    if game_hash[:home][:players][index][:player_name] == player_name
      number_of_points = game_hash[:home][:players][index][:points]
    end
    if game_hash[:away][:players][index][:player_name] == player_name
      number_of_points = game_hash[:away][:players][index][:points]
    end
    index += 1 
  end
  number_of_points
end

def shoe_size(player_name)
 shoe = 0 
 index = 0
  while index < game_hash[:home][:players].length do
    if game_hash[:home][:players][index][:player_name] == player_name
      shoe = game_hash[:home][:players][index][:shoe]
    end
    if game_hash[:away][:players][index][:player_name] == player_name
      shoe = game_hash[:away][:players][index][:shoe]
    end
    index += 1 
  end
  shoe
end
 
def team_colors(team_name)
  if team_name == game_hash[:home][:team_name]
    result = game_hash[:home][:colors]
  end 
  if team_name == game_hash[:away][:team_name]
    result = game_hash[:away][:colors]
  end 
  result
end 

def team_names 
team_names = []
team_names.push((game_hash[:home][:team_name]),(game_hash[:away][:team_name]))
team_names
end 

def player_numbers(team_name)
numbers = []
  if team_name == game_hash[:home][:team_name]
    index = 0 
    while index < game_hash[:home][:players].length  do 
     numbers.push(game_hash[:home][:players][index][:number])
     index += 1 
    end 
  end 
  if team_name == game_hash[:away][:team_name]
     index = 0 
    while index < game_hash[:away][:players].length do 
     numbers.push(game_hash[:away][:players][index][:number])
     index += 1 
    end 
  end 
  numbers
end

def player_stats(player_name)
 index = 0
  while index < game_hash[:home][:players].length do
    if game_hash[:home][:players][index][:player_name] == player_name
      stats = {
        :number => game_hash[:home][:players][index][:number],
        :shoe => game_hash[:home][:players][index][:shoe],
        :points => game_hash[:home][:players][index][:points],
        :rebounds => game_hash[:home][:players][index][:rebounds],
        :assists => game_hash[:home][:players][index][:assists],
        :steals => game_hash[:home][:players][index][:steals],
        :blocks => game_hash[:home][:players][index][:blocks],
        :slam_dunks => game_hash[:home][:players][index][:slam_dunks],
      }
    end
    if game_hash[:away][:players][index][:player_name] == player_name
        stats = {
        :number => game_hash[:away][:players][index][:number],
        :shoe => game_hash[:away][:players][index][:shoe],
        :points => game_hash[:away][:players][index][:points],
        :rebounds => game_hash[:away][:players][index][:rebounds],
        :assists => game_hash[:away][:players][index][:assists],
        :steals => game_hash[:away][:players][index][:steals],
        :blocks => game_hash[:away][:players][index][:blocks],
        :slam_dunks => game_hash[:away][:players][index][:slam_dunks],
      }
    end
    index += 1 
  end
  stats
end

def big_shoe_rebounds
largest_shoe = 0 
player_names = []
home_index = 0 
  while home_index < game_hash[:home][:players].length  do 
     player_names.push(game_hash[:home][:players][home_index][:player_name])
     home_index += 1 
  end
away_index = 0 
  while away_index < game_hash[:away][:players].length do 
     player_names.push(game_hash[:away][:players][away_index][:player_name])
     away_index += 1 
  end 
player_index = 0 
while player_index < player_names.length do 
  if shoe_size(player_names[player_index]) > largest_shoe 
    largest_shoe = shoe_size(player_names[player_index])
    player_with_large_shoe = player_names[player_index]
  end 
  player_index += 1 
end 
player_stats(player_with_large_shoe)[:rebounds]
end

def most_points_scored
most_points = 0 
player_names = []
home_index = 0 
  while home_index < game_hash[:home][:players].length  do 
     player_names.push(game_hash[:home][:players][home_index][:player_name])
     home_index += 1 
  end
away_index = 0 
  while away_index < game_hash[:away][:players].length do 
     player_names.push(game_hash[:away][:players][away_index][:player_name])
     away_index += 1 
  end 
player_index = 0 
while player_index < player_names.length do 
  if player_stats(player_names[player_index])[:points] > most_points
    most_points = player_stats(player_names[player_index])[:points]
    player_with_most_points = player_names[player_index]
  end 
  player_index += 1 
end 
player_with_most_points
end

def winning_team 
home_total = 0 
away_total = 0 
home_index = 0 
  while home_index < game_hash[:home][:players].length  do 
     home_total += game_hash[:home][:players][home_index][:points]
     home_index += 1 
  end
away_index = 0 
  while away_index < game_hash[:away][:players].length  do 
     away_total += game_hash[:away][:players][away_index][:points]
     away_index += 1 
  end
if away_total > home_total 
  game_hash[:away][:team_name]
end
if home_total > away_total 
  game_hash[:home][:team_name]
end
end 

def player_with_longest_name 
player_names = []
home_index = 0 
  while home_index < game_hash[:home][:players].length  do 
     player_names.push(game_hash[:home][:players][home_index][:player_name])
     home_index += 1 
  end
away_index = 0 
  while away_index < game_hash[:away][:players].length do 
     player_names.push(game_hash[:away][:players][away_index][:player_name])
     away_index += 1 
  end 
player_names.max_by(&:length)
end

def long_name_steals_a_ton? 
number_of_steals = player_stats(player_with_longest_name)[:steals]
new_steals = 0 
player_names = []
home_index = 0 
  while home_index < game_hash[:home][:players].length  do 
     player_names.push(game_hash[:home][:players][home_index][:player_name])
     home_index += 1 
  end
away_index = 0 
  while away_index < game_hash[:away][:players].length do 
     player_names.push(game_hash[:away][:players][away_index][:player_name])
     away_index += 1 
  end 
player_index = 0 
while player_index < player_names.length do 
  if player_stats(player_names[player_index])[:steals] > number_of_steals
    new_steals = player_stats(player_names[player_index])[:steals]
  end 
    player_index += 1 
end 

if number_of_steals > new_steals
    true 
  else 
    false
end 
end 