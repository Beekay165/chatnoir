class Admin::ProductsController < Admin::BaseController
    def index
        @products = Product.all 
    end
    
    def create
        @product = Product.new(product_params)

        respond_to do |format|
          if @product.save
            format.html { redirect_to @product, notice: 'Product was successfully created.' }
            format.json { render :show, status: :created, location: @product }
          else
            format.html { render :new }
            format.json { render json: @product.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def new
        @product = Product.new
    end
    
    def edit
        @product = Product.find(params[:id])
    end
    
    def show
        @product = Product.find(params[:id])
    end
    
    def update
        
    end
    
    def destroy
        
    end
end
