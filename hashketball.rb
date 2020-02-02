# Write your code here!
require "pry"

def game_hash
  {
    away: { team_name: 'Charlotte Hornets',
            colors: %w[Turquoise Purple],
            players: [
              { player_name: 'Jeff Adrien',
                number: 4,
                shoe: 18,
                points: 10,
                rebounds: 1,
                assists: 1,
                steals: 2,
                blocks: 7,
                slam_dunks: 2 },
              { player_name: 'Bismack Biyombo',
                number: 0,
                shoe: 16,
                points: 12,
                rebounds: 4,
                assists: 7,
                steals: 22,
                blocks: 15,
                slam_dunks: 10 },
              { player_name: 'DeSagna Diop',
                number: 2,
                shoe: 14,
                points: 24,
                rebounds: 12,
                assists: 12,
                steals: 4,
                blocks: 5,
                slam_dunks: 5 },
              { player_name: 'Ben Gordon',
                number: 8,
                shoe: 15,
                points: 33,
                rebounds: 3,
                assists: 2,
                steals: 1,
                blocks: 1,
                slam_dunks: 0 },
              { player_name: 'Kemba Walker',
                number: 33,
                shoe: 15,
                points: 6,
                rebounds: 12,
                assists: 12,
                steals: 7,
                blocks: 5,
                slam_dunks: 12 }
            ] },
    home: { team_name: 'Brooklyn Nets',
            colors: %w[Black White],
            players: [
              { player_name: 'Alan Anderson',
                number: 0,
                shoe: 16,
                points: 22,
                rebounds: 12,
                assists: 12,
                steals: 3,
                blocks: 1,
                slam_dunks: 1 },
              { player_name: 'Reggie Evans',
                number: 30,
                shoe: 14,
                points: 12,
                rebounds: 12,
                assists: 12,
                steals: 12,
                blocks: 12,
                slam_dunks: 7 },
              { player_name: 'Brook Lopez',
                number: 11,
                shoe: 17,
                points: 17,
                rebounds: 19,
                assists: 10,
                steals: 3,
                blocks: 1,
                slam_dunks: 15 },
              { player_name: 'Mason Plumlee',
                number: 1,
                shoe: 19,
                points: 26,
                rebounds: 11,
                assists: 6,
                steals: 3,
                blocks: 8,
                slam_dunks: 5 },
              { player_name: 'Jason Terry',
                number: 31,
                shoe: 15,
                points: 19,
                rebounds: 2,
                assists: 2,
                steals: 4,
                blocks: 11,
                slam_dunks: 1 }
            ] }
  }
end

def num_points_scored(player_name)
  game_hash.each do |homeaway, team|
    team.each do |att, data|
      if att == :players
        data.each do |players|
          if players[:player_name] == player_name
            return players[:points]
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |homeaway, team|
    team.each do |att, data|
      if att == :players
        data.each do |players|
          if players[:player_name] == player_name
            return players[:shoe]
          end
        end
      end
    end
  end
end

def team_colors(team_name)

  game_hash.each do |homeaway, team|

    if team[:team_name] == team_name

      return team[:colors]
    end
  end

end

def team_names
  teams_playing = []
  game_hash.each do |homeaway, team|
    teams_playing << team[:team_name]
  end
  teams_playing
end

def player_numbers(team_name)
  numbers = []
  game_hash.each do |homeaway, team|
    if team[:team_name] == team_name
      team.each do |key, value|
        if key == :players
          value.each do |att|
            numbers << att[:number]
          end
        end
      end
    end
  end
  numbers
end

def player_stats(p_name)
  stats = {}
  game_hash.each do |homeaway, team|
    team.each do |att, data|
      if att == :players
        data.each do |players|
          if players[:player_name] == p_name

              stats = players

          end
        end
      end
    end
  end
  stats.delete(:player_name)
  stats
end

def big_shoe_rebounds
  rebounds = 0
  shoe_size = 0
  game_hash.each do |homeaway, team|
    team[:players].each do |player|
      if player[:shoe] > shoe_size
        shoe_size = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end
  rebounds
end


def most_points_scored
  points_scored = 0
  hp_player = ""
  game_hash.each do |homeaway, team|
    team[:players].each do |player|
      if player[:points] > points_scored
        points_scored = player[:points]
        hp_player = player[:player_name]
      end
    end
  end
  hp_player
end

def winning_team
  away_points = 0
  home_points = 0
  winning_team = ""
  game_hash.each do |homeaway, team|
    if homeaway == :away
      team[:players].each do |player|
        away_points += player[:points]
      end
    else
      team[:players].each do |player|
        home_points += player[:points]
      end
    end
  end

  if away_points > home_points
    return game_hash[:away][:team_name]
  else
    return game_hash[:home][:team_name]
  end

end

def player_with_longest_name
  longest_name = ""
  game_hash.each do |homeaway, team|
    team[:players].each do |player|
      if player[:player_name].length > longest_name.length
        longest_name = player[:player_name]
      end
    end
  end
  longest_name
end

def long_name_steals_a_ton?
  p_name = ""
  steals = 0
  game_hash.each do |homeaway, team|
    team[:players].each do |player|
      if player[:steals] > steals
        steals = player[:steals]
        p_name = player[:player_name]
      end
    end
  end
  if p_name == player_with_longest_name
    true
  else
    false
  end
end
