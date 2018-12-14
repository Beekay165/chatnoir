class Variant < ApplicationRecord
    # field validation
    validates :name, presence: true
    validates :option, presence: true
    validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
    validates :stock, presence: true, numericality: { greater_than: 0 }
    validates :image, presence: true

    # association with products through our join table product_variants
    has_many :product_variants
    has_many :variants, through: :product_variants
end
