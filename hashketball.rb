# Write your code here!
def game_hash
  gamehash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => [{:player_name => "Alan Anderson", :number => 0, :shoe => 16 , :points => 22 , :rebounds => 12 , :assists => 12 , :steals => 3 , :blocks => 1, :slam_dunks => 1},{:player_name => "Reggie Evans", :number => 30, :shoe => 14 , :points => 12, :rebounds => 12, :assists => 12, :steals => 12, :blocks => 12, :slam_dunks =>7 },{:player_name => "Brook Lopez", :number =>11 , :shoe => 17, :points => 17 , :rebounds => 19, :assists => 10 , :steals => 3 , :blocks => 1, :slam_dunks =>15 },{:player_name => "Mason Plumlee", :number => 1, :shoe => 19, :points => 26, :rebounds => 11, :assists => 6 , :steals => 3 , :blocks => 8 , :slam_dunks => 5},{:player_name => "Jason Terry", :number => 31 , :shoe => 15, :points => 19, :rebounds => 2, :assists => 2, :steals => 4, :blocks => 11, :slam_dunks =>1 }]
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => [{:player_name => "Jeff Adrien", :number => 4, :shoe => 18 , :points => 10, :rebounds => 1, :assists => 1, :steals =>2 , :blocks =>7 , :slam_dunks =>2 },{:player_name => "Bismack Biyombo", :number => 0, :shoe => 16 , :points => 12, :rebounds => 4, :assists => 7, :steals => 22, :blocks => 15, :slam_dunks =>10 },{:player_name => "DeSagna Diop", :number => 2 , :shoe => 14 , :points => 24, :rebounds => 12 , :assists => 12, :steals =>4 , :blocks => 5, :slam_dunks => 5},{:player_name => "Ben Gordon", :number =>8 , :shoe => 15, :points =>33 , :rebounds =>3 , :assists => 2, :steals =>1 , :blocks =>1 , :slam_dunks =>0 },{:player_name => "Kemba Walker", :number =>33 , :shoe => 15 , :points => 6 , :rebounds => 12, :assists =>12 , :steals => 7, :blocks =>5 , :slam_dunks => 12}]
    }
    
  }
  return gamehash
  
  
end

def num_points_scored(players_name)
  game = game_hash
  i = 0

  
  while i <  game[:home][:players].length
  homeplayers = game[:home][:players][i]
  awayplayers = game[:away][:players][i]
    if game[:home][:players][i][:player_name] == players_name
      return homeplayers[:points]
    elsif game[:away][:players][i][:player_name] == players_name
      return awayplayers[:points]
    end
    i += 1
  end
end

def shoe_size(players_name)
  game = game_hash
  i = 0

  
  while i <  game[:home][:players].length
  homeplayers = game[:home][:players][i]
  awayplayers = game[:away][:players][i]
    if game[:home][:players][i][:player_name] == players_name
      return homeplayers[:shoe]
    elsif game[:away][:players][i][:player_name] == players_name
      return awayplayers[:shoe]
    end
    i += 1
  end
  
  
  
end

def team_colors(team)
  
   game = game_hash
   
   if game[:home][:team_name] == team
      return game[:home][:colors]
    elsif game[:away][:team_name] == team
      return game[:away][:colors]
    end

  
end

def team_names
  
   game = game_hash
   arr = []
   
  arr << game[:home][:team_name]
  arr << game[:away][:team_name]
  return arr
end

def player_numbers(team)
    
   game = game_hash 
   i = 0
   arr = []
   if game[:home][:team_name] == team
      while i < game[:home][:players].length do
        arr << game[:home][:players][i][:number]
        i += 1
      end
    elsif game[:away][:team_name] == team
      while i < game[:away][:players].length do
        arr << game[:away][:players][i][:number]
        i += 1
      end
    end
    
    return arr
    
    
end

def player_stats(players_name)
    
   game = game_hash 
   i = 0

   while i < game[:home][:players].length do
     if players_name == game[:home][:players][i][:player_name]
       return game[:home][:players][i].slice(:assists, :blocks, :number, :points, :rebounds, :shoe, :slam_dunks, :steals)
     elsif players_name == game[:away][:players][i][:player_name]
       return game[:away][:players][i].slice(:assists, :blocks, :number, :points, :rebounds, :shoe, :slam_dunks, :steals)
     end
     i += 1
   end
end

def big_shoe_rebounds
   game = game_hash
  i = 0
  home_most_shoe = game[:home][:players][0][:shoe]
  away_most_shoe = game[:home][:players][0][:shoe]
  
  home_player_rebounds = 0
  away_player_rebounds = 0
  
  while i <  game[:home][:players].length do
    if game[:home][:players][i][:shoe] > home_most_shoe
      home_most_shoe = game[:home][:players][i][:shoe]
      home_player_rebounds = game[:home][:players][i][:rebounds]
    end
     i += 1
  end
    index = 0
    while index <  game[:away][:players].length do
      if game[:away][:players][index][:shoe] > away_most_shoe
        away_most_shoe = game[:away][:players][index][:shoe]
        away_player_rebounds = game[:away][:players][index][:rebounds]
      end
      index += 1
  end
  
    if home_most_shoe < away_most_shoe
      return away_player_rebounds
    else 
      return home_player_rebounds
    end
  
end


def most_points_scored
  game = game_hash
  i = 0
  home_most = game[:home][:players][0][:points]
  away_most = game[:home][:players][0][:points]
  
  home_player = ""
  away_player = ""
  
  while i <  game[:home][:players].length do
    if game[:home][:players][i][:points] > home_most
      home_most = game[:home][:players][i][:points]
      home_player = game[:home][:players][i][:player_name]
    end
     i += 1
  end
    index = 0
    while index <  game[:away][:players].length do
      if game[:away][:players][index][:points] > away_most
        away_most = game[:away][:players][index][:points]
        away_player = game[:away][:players][index][:player_name]
      end
      index += 1
  end
  
    if home_most < away_most
      return away_player
    else 
      return home_player
    end
end

def winning_team
  game = game_hash
  i = 0
  total_home = 0
  total_away = 0
  
  while i < game[:home][:players].length do
      total_home += game[:home][:players][i][:points]
      i += 1
  end
  index = 0
   while index < game[:away][:players].length do
      total_away += game[:away][:players][index][:points]
      index += 1
  end
  
  if total_home > total_away
    return game[:home][:team_name]
  else
    return game[:away][:team_name]
  end
  
end

def player_with_longest_name
  game = game_hash
  i = 0
  home_most = game[:home][:players][0][:player_name].length
  away_most = game[:home][:players][0][:player_name].length
  
  home_player = ""
  away_player = ""
  
  while i <  game[:home][:players].length do
    if game[:home][:players][i][:player_name].length > home_most
      home_most = game[:home][:players][i][:player_name].length
      home_player = game[:home][:players][i][:player_name]
    end
     i += 1
  end
    index = 0
    while index <  game[:away][:players].length do
      if game[:away][:players][index][:player_name].length > away_most
        away_most = game[:away][:players][index][:player_name].length
        away_player = game[:away][:players][index][:player_name]
      end
      index += 1
  end
  
    if home_most < away_most
      return away_player
    else 
      return home_player
    end
end

def long_name_steals_a_ton?
  long_player = player_with_longest_name
  
  game = game_hash
  i = 0
  home_most = game[:home][:players][0][:steals]
  away_most = game[:home][:players][0][:steals]
  
  home_player = ""
  away_player = ""
  
  while i <  game[:home][:players].length do
    if game[:home][:players][i][:steals] > home_most
      home_most = game[:home][:players][i][:steals]
      home_player = game[:home][:players][i][:player_name]
    end
     i += 1
  end
    index = 0
    while index <  game[:away][:players].length do
      if game[:away][:players][index][:steals] > away_most
        away_most = game[:away][:players][index][:steals]
        away_player = game[:away][:players][index][:player_name]
      end
      index += 1
  end
  
    if home_most < away_most
      return away_player == long_player
    else 
      return home_player == long_player
    end
    
end










