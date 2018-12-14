class Admin::CategoriesController < Admin::BaseController
    def index
        @categories = Category.all
    end

    def create
        @category = Category.new(category_params)

        if @category.save
        flash[:notice] = 'Category was successfully created'
        redirect_to edit_admin_category_path(@category)
        else
        render 'new'
        end  
    end

    def new
    @category = Category.new
    end

    def edit
        @category = Category.find(params[:id])
    end

    def show
        @category = Category.find(params[:id])
    end

    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
        flash[:notice] = 'category was successfully updated'
        redirect_to edit_admin_category_path(@category)
        else
        render 'edit'
        end
    end

    private

    # define the category_params
    def category_params
        params.require(:category).permit(:name, :description, :image )
    end
end
