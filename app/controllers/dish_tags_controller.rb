class DishTagsController < ApplicationController
  before_action :set_dish_tag, only: %i[ show edit update destroy ]

  # GET /dish_tags or /dish_tags.json
  def index
    @dish_tags = DishTag.all
  end

  # GET /dish_tags/1 or /dish_tags/1.json
  def show
  end

  # GET /dish_tags/new
  def new
    @dish_tag = DishTag.new
  end

  # GET /dish_tags/1/edit
  def edit
  end

  # POST /dish_tags or /dish_tags.json
  def create
    @dish_tag = DishTag.new(dish_tag_params)

    respond_to do |format|
      if @dish_tag.save
        format.html { redirect_to @dish_tag, notice: "Dish tag was successfully created." }
        format.json { render :show, status: :created, location: @dish_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dish_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dish_tags/1 or /dish_tags/1.json
  def update
    respond_to do |format|
      if @dish_tag.update(dish_tag_params)
        format.html { redirect_to @dish_tag, notice: "Dish tag was successfully updated." }
        format.json { render :show, status: :ok, location: @dish_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dish_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dish_tags/1 or /dish_tags/1.json
  def destroy
    @dish_tag.destroy
    respond_to do |format|
      format.html { redirect_to dish_tags_url, notice: "Dish tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish_tag
      @dish_tag = DishTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dish_tag_params
      params.require(:dish_tag).permit(:name, :tagType)
    end
end
