# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  code       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord

  has_many :groups, :dependent => :destroy
  has_many :scores, :dependent => :destroy
end
