class DishxTagsController < ApplicationController
  before_action :set_dishx_tag, only: %i[ show edit update destroy ]

  # GET /dishx_tags or /dishx_tags.json
  def index
    @dishx_tags = DishxTag.all
  end

  # GET /dishx_tags/1 or /dishx_tags/1.json
  def show
  end

  # GET /dishx_tags/new
  def new
    @dishx_tag = DishxTag.new
  end

  # GET /dishx_tags/1/edit
  def edit
  end

  # POST /dishx_tags or /dishx_tags.json
  def create
    @dishx_tag = DishxTag.new(dishx_tag_params)

    respond_to do |format|
      if @dishx_tag.save
        format.html { redirect_to @dishx_tag, notice: "Dishx tag was successfully created." }
        format.json { render :show, status: :created, location: @dishx_tag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dishx_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dishx_tags/1 or /dishx_tags/1.json
  def update
    respond_to do |format|
      if @dishx_tag.update(dishx_tag_params)
        format.html { redirect_to @dishx_tag, notice: "Dishx tag was successfully updated." }
        format.json { render :show, status: :ok, location: @dishx_tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dishx_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dishx_tags/1 or /dishx_tags/1.json
  def destroy
    @dishx_tag.destroy
    respond_to do |format|
      format.html { redirect_to dishx_tags_url, notice: "Dishx tag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dishx_tag
      @dishx_tag = DishxTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dishx_tag_params
      params.require(:dishx_tag).permit(:dish_id, :dish_tag_id)
    end
end
