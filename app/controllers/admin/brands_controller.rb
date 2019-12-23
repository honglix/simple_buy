class Admin::BrandsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout "admin"

  def index
    @brands= Brand.all
  end

  def new
    @brand = Brand.new
  end

  def show
    @brand = Brand.find(params[:id])
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to admin_brands_path
    else
      render :new
    end
  end

  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      redirect_to admin_brands_path
    else
      redirect_to :edit
    end
  end

  def edit
    @brand = Brand.find(params[:id])
  end

  private

    def brand_params
      params.require(:brand).permit(:name, :description, :logo)
    end
end
