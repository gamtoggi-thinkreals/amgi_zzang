class Card < ActiveRecord::Base
  belongs_to :directory
  belongs_to :card_color
end
