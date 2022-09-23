class Shopcard < ActiveRecord::Base
    has_many :cardcategories
end