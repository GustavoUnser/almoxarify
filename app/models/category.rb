class Category < ApplicationRecord
    has_enumeration_for :name, with: Categories, create_helpers: true
    has_many :items
end
