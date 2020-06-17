class FoodsController < ApplicationController
  before_action :find_food, only: [:edit, :update, :destroy]

  def index

  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path, notice: '新建成功'
    else  
      render :new, notice: '資料有誤'
    end
  end

  def edit
  end

  def update
    if @food.update(food_params)
      redirect_to root_path, notice: '修改成功'
    else 
      render :edit, notice: '資料有誤'
    end
  end

  def destroy

  end

  private

  def food_params
    params.require(:food).permit(:name, :location, :url, :description)
  end

  def find_food
    @food = Food.find(params[:id])
  end
end
