class IngredientxTagsController < ApplicationController
  before_action :set_ingredientx_tag, only: %i[ show edit update destroy ]

  # GET /ingredientx_tags or /ingredientx_tags.json
  def index
    @ingredientx_tags = IngredientxTag.all
  end

  # GET /ingredientx_tags/1 or /ingredientx_tags/1.json
  def show
  end

  # GET /ingredientx_tags/new
  def new
    @ingredientx_tag = IngredientxTag.new
  end

  # GET /ingredientx_tags/1/edit
  def edit
  end

  # POST /ingredientx_tags or /ingredientx_tags.json
  def create
    @ingredientx_tag = IngredientxTag.new(ingredientx_tag_params)

    respond_to do |format|
      if @ingredientx_tag.save
        format.html { redirect_to @ingredientx_tag, notice: "Ingredientx tag was successfully created." }
        format.json { render :show, status: :created, location: @ingredientx_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ingredientx_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredientx_tags/1 or /ingredientx_tags/1.json
  def update
    respond_to do |format|
      if @ingredientx_tag.update(ingredientx_tag_params)
        format.html { redirect_to @ingredientx_tag, notice: "Ingredientx tag was successfully updated." }
        format.json { render :show, status: :ok, location: @ingredientx_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ingredientx_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredientx_tags/1 or /ingredientx_tags/1.json
  def destroy
    @ingredientx_tag.destroy
    respond_to do |format|
      format.html { redirect_to ingredientx_tags_url, notice: "Ingredientx tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredientx_tag
      @ingredientx_tag = IngredientxTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ingredientx_tag_params
      params.require(:ingredientx_tag).permit(:ingredient_id, :ingredient_tag_id)
    end
end
