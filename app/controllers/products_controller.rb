class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.paginate(page: params[:page], per_page: 4)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        @product.image.attach(params[:product][:image]) if params[:product][:image].present?
        redirect_to @product, notice: 'Product was successfully created.'
      else
        render :new
      end
    end

  end

  def update
    @product.assign_attributes(product_params)

    respond_to do |format|
      if @product.update(product_params)
       redirect_to @product, notice: 'Product was successfully updated.'
      else
       render :edit
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
    redirect_to products_url, notice: 'Product was successfully destroyed.'
    end
  end


  private
    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :category, :price, :image)
    end
end
