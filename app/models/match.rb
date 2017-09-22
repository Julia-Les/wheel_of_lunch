class Match < ApplicationRecord
  has_one :iteration
  has_one :annkissamer1, :class_name => "Annkissamer", :foreign_key => :annkissamer1_id
  has_one :annkissamer2, :class_name => "Annkissamer", :foreign_key => :annkissamer2_id
	has_one :review
end
