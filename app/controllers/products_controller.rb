class ProductsController < ApplicationController
def index
@products = Product.all
@productCount = Product.all.count
end

def show
 @singleitem = Product.find(params[:id])
 variants = ProductVariant.where('product_id = ?', params[:id])
 @variantsItem=[]
for item in variants
	var = Variant.find(item.variant_id)
	@variantsItem.push(var)
end
end

def poster
productsID = ProductCategory.select("product_id").where("category_id = 1")
general(productsID)
category = Category.first
@header = category.name
end

def illustration
productsID = ProductCategory.select("product_id").where("category_id = 2")
general(productsID)
category = Category.second
@header = category.name
end

def woodblock
productsID = ProductCategory.select("product_id").where("category_id = 3")
general(productsID)
category = Category.third
@header = category.name
end

def general(productsID)
@productItem=[]
for item in productsID
	product = Product.find(item.product_id)
	@productItem.push(product)

end
end

end
