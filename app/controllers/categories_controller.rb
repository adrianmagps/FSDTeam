class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @categories = Category.all
    respond_to do |format|
      format.html
      format.json { render json: @categories, only: [:id, :name] }
    end
  end

  def create
    @category = Category.create!(category_params)
    respond_to do |format|
      format.html { redirect_to categories_path }
      format.js
    end
  end

  def destroy
    # authorize! :destroy, Category

    @category = Category.find params[:id]
    @name_id = "#{@category.name}_#{@category.id}"
    @category.destroy!

    respond_to do |format|
      format.html { redirect_to categories_path }
      format.js
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
