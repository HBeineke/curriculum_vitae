class ChronicleItemSkill < ActiveRecord::Base
  belongs_to :skill
  belongs_to :chronicle_item
end