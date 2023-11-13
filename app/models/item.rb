class Item < ApplicationRecord
	belongs_to :category

	scope :by_category, lambda {|category|
		where("category = ?", category)
	}
end
