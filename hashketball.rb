# Write your code here!

def game_hash
  game_hash = {
    :home =>{
           :team_name =>"Brooklyn Nets",
           :colors =>["Black", "White"],
           :players => {
             
             "Alan Anderson"=> {
               
               :number => 0,
               :shoe  => 16,
               :points => 22,
               :rebounds => 12,
               :assists => 12,
               :steals => 3,
               :blocks => 1, 
               :slam_dunks => 1
               
             },
             
             "Reggie Evans" => {
               
               :number => 30,
               :shoe  => 14,
               :points => 12,
               :rebounds => 12,
               :assists => 12,
               :steals => 12,
               :blocks => 12, 
               :slam_dunks => 7
             },
             
             "Brook Lopez" => {
               :number => 11,
               :shoe  => 17,
               :points => 17,
               :rebounds => 19,
               :assists => 10,
               :steals => 3,
               :blocks => 1, 
               :slam_dunks => 15
             },
             
             "Mason Plumlee" => {
               :number => 1,
               :shoe  => 19,
               :points => 26,
               :rebounds => 11,
               :assists => 6,
               :steals => 3,
               :blocks => 8, 
               :slam_dunks => 5
             },
             
             "Jason Terry" => {
                :number => 31,
               :shoe  => 15,
               :points => 19,
               :rebounds => 2,
               :assists => 2,
               :steals => 4,
               :blocks => 11, 
               :slam_dunks => 1 
             }
             
             
               
             }
             
           },
        
         :away =>{
           :team_name =>"Charlotte Hornets",
           :colors =>["Turquoise", "Purple"],
           :players => {
             
             "Jeff Adrien"=> {
               
               :number => 4,
               :shoe  => 18,
               :points => 10,
               :rebounds => 1,
               :assists => 1,
               :steals => 2,
               :blocks => 7, 
               :slam_dunks => 2
               
             },
             
             "Bismack Biyombo" => {
               
               :number => 0,
               :shoe  => 16,
               :points => 12,
               :rebounds => 4,
               :assists => 7,
               :steals => 22,
               :blocks => 15, 
               :slam_dunks => 10
             },
             
             "DeSagna Diop" => {
               :number => 2,
               :shoe  => 14,
               :points => 24,
               :rebounds => 12,
               :assists => 12,
               :steals => 4,
               :blocks => 5, 
               :slam_dunks => 5
             },
             
             "Ben Gordon" => {
               :number => 8,
               :shoe  => 15,
               :points => 33,
               :rebounds => 3,
               :assists => 2,
               :steals => 1,
               :blocks => 1, 
               :slam_dunks => 0
             },
             
             "Kemba Walker" => {
                :number => 33,
               :shoe  => 15,
               :points => 6,
               :rebounds => 12,
               :assists => 12,
               :steals => 7,
               :blocks => 5, 
               :slam_dunks => 12 
             }
           }
   }
  }
end

def find_all_players
  game_hash[:home][:players]
  game_hash[:away][:players]
  game_hash[:home][:players].merge(game_hash[:away][:players])
end

def num_points_scored(player_name)
  player = find_all_players[player_name]
  player[:points]
end

def shoe_size(player_name)
  player = find_all_players[player_name]
  player[:shoe]
end

def team_colors(team_name)
  game_hash.each do |location, teams|
    if teams[:team_name] == team_name
      return teams[:colors]
    end
  end
end

def team_names
  both_team_names = []
  game_hash.collect do |location, team_info|
    both_team_names << team_info[:team_name]
end
both_team_names
end

def player_numbers(team_name)
  all_team_numbers_players = []
  game_hash.each do |location, all_team_info|
  if all_team_info[:team_name] == team_name
      all_team_info[:players].each do |name, stats| 
      all_team_numbers_players << stats[:number]

    end
  end
end
return all_team_numbers_players
end

def player_stats(players_name)
  player = find_all_players[players_name]
  return player
end

def big_shoe_rebounds
  rebound_bs = nil 
  biggest_shoe = 0 
  find_all_players.each do |player, stats|
    if stats[:shoe] > biggest_shoe
      biggest_shoe = stats[:shoe]
      rebound_bs = stats[:rebounds]
    end
  
end
return rebound_bs
end








