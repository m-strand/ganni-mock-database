class Item < ActiveRecord::Base
    has_many :color
    has_many :category
    has_many :size
end