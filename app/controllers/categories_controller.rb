class CategoriesController < ApplicationController
	def index
    @categories = Category.all.order('created_at DESC')
  end

  def show
    @category = Category.find(params[:id])
  end

  private

    def category_params
      params.require(:category).permit(:name).merge(post: @post)
    end
end

