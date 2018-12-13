class Product < ApplicationRecord
    # field validation
    validates :name, presence: true, length: {minimum: 5, maximum:50}
    validates :description, presence: true, length: {minimum: 10, maximum:300}
    validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
    validates :stock, presence: true, numericality: { greater_than: 0 }
    validates :image, presence: true
    
    # association with categories through our join table product_categories
    has_many :product_categories
    has_many :categories, through: :product_categories
end
