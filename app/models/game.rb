class Game < ApplicationRecord
  belongs_to :winner, :foreign_key => :winner_id, :class_name => 'Game'
  belongs_to :loser, :foreign_key => :loser_id, :class_name => 'Game'
end
