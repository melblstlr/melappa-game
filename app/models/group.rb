# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  master     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :integer
#  user_id    :integer
#

class Group < ApplicationRecord
  
  belongs_to :user
  belongs_to :game
end
