class CoffeeOrdersController < ApplicationController
  before_action :set_coffee_order, only: [:show, :edit, :update, :destroy]

  # GET /coffee_orders
  def index
    @coffee_orders = CoffeeOrder.all
  end

  # GET /coffee_orders/1
  def show
  end

  # GET /coffee_orders/new
  def new
    @coffee_order = CoffeeOrder.new
  end

  # GET /coffee_orders/1/edit
  def edit
  end

  # POST /coffee_orders
  def create
    @coffee_order = CoffeeOrder.new(coffee_order_params)

    if @coffee_order.save
      redirect_to @coffee_order, notice: 'Coffee order was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /coffee_orders/1
  def update
    if @coffee_order.update(coffee_order_params)
      redirect_to @coffee_order, notice: 'Coffee order was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /coffee_orders/1
  def destroy
    @coffee_order.destroy
    redirect_to coffee_orders_url, notice: 'Coffee order was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coffee_order
      @coffee_order = CoffeeOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coffee_order_params
      params.require(:coffee_order).permit(:user_id, :coffee_type_id, :cafe, :dairy_type_id, :modifications_other, :iced, :picture, :date, :rating)
    end
end
