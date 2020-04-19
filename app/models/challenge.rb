# == Schema Information
#
# Table name: challenges
#
#  id          :integer          not null, primary key
#  description :string
#  name        :string
#  scoring     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  game_id     :integer
#

class Challenge < ApplicationRecord

  has_many :scores
end
