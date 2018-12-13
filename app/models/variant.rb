class Variant < ApplicationRecord
    # association with products through our join table product_variants
    has_many :product_variants
    has_many :variants, through: :product_variants
end
