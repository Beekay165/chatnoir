class Product < ApplicationRecord
    validates :name, :price, :stock, presence: true
end
