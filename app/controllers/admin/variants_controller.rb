class Admin::VariantsController < Admin::BaseController
    def index
        @variants = Variant.all
    end

    def create
        @variant = Variant.new(variant_params)

        if @variant.save
        flash[:notice] = 'Variant was successfully created'
        redirect_to edit_admin_variant_path(@variant)
        else
        render 'new'
        end  
    end

    def new
    @variant = Variant.new
    end

    def edit
        @variant = Variant.find(params[:id])
    end

    def show
        @variant = Variant.find(params[:id])
    end

    def update
        @variant = Variant.find(params[:id])
        if @variant.update(variant_params)
        flash[:notice] = 'Variant was successfully updated'
        redirect_to edit_admin_variant_path(@variant)
        else
        render 'edit'
        end
    end

    private

    # define the variant_params
    def variant_params
        params.require(:variant).permit(:name, :option, :image, :price, :stock, :sku)
    end
end
