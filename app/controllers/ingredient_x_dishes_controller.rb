class IngredientXDishesController < ApplicationController
  before_action :set_ingredient_x_dish, only: %i[ show edit update destroy ]

  # GET /ingredient_x_dishes or /ingredient_x_dishes.json
  def index
    @ingredient_x_dishes = IngredientXDish.all
  end

  # GET /ingredient_x_dishes/1 or /ingredient_x_dishes/1.json
  def show
  end

  # GET /ingredient_x_dishes/new
  def new
    @ingredient_x_dish = IngredientXDish.new
  end

  # GET /ingredient_x_dishes/1/edit
  def edit
  end

  # POST /ingredient_x_dishes or /ingredient_x_dishes.json
  def create
    @ingredient_x_dish = IngredientXDish.new(ingredient_x_dish_params)

    respond_to do |format|
      if @ingredient_x_dish.save
        format.html { redirect_to @ingredient_x_dish, notice: "Ingredient x dish was successfully created." }
        format.json { render :show, status: :created, location: @ingredient_x_dish }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingredient_x_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient_x_dishes/1 or /ingredient_x_dishes/1.json
  def update
    respond_to do |format|
      if @ingredient_x_dish.update(ingredient_x_dish_params)
        format.html { redirect_to @ingredient_x_dish, notice: "Ingredient x dish was successfully updated." }
        format.json { render :show, status: :ok, location: @ingredient_x_dish }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingredient_x_dish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient_x_dishes/1 or /ingredient_x_dishes/1.json
  def destroy
    @ingredient_x_dish.destroy
    respond_to do |format|
      format.html { redirect_to ingredient_x_dishes_url, notice: "Ingredient x dish was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient_x_dish
      @ingredient_x_dish = IngredientXDish.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredient_x_dish_params
      params.require(:ingredient_x_dish).permit(:ingredient_id, :dish_id, :weight)
    end
end
