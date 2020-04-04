# == Schema Information
#
# Table name: scores
#
#  id           :integer          not null, primary key
#  current      :boolean
#  score        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  challenge_id :integer
#  game_id      :integer
#  user_id      :integer
#

class Score < ApplicationRecord

  belongs_to :user
  belongs_to :game
  belongs_to :challenge
end
