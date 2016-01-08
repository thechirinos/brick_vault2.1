class LegoSetsController < ApplicationController
  before_action :set_lego_set, only: [:show, :edit, :update, :destroy]

  # GET /lego_sets
  # GET /lego_sets.json
  def index
    @lego_sets = LegoSet.all
  end

  # GET /lego_sets/1
  # GET /lego_sets/1.json
  def show
  end

  # GET /lego_sets/new
  def new
    @lego_set = LegoSet.new
  end

  # GET /lego_sets/1/edit
  def edit
  end

  # POST /lego_sets
  # POST /lego_sets.json
  def create
    @lego_set = LegoSet.new(lego_set_params)

    respond_to do |format|
      if @lego_set.save
        format.html { redirect_to @lego_set, notice: 'Lego set was successfully created.' }
        format.json { render :show, status: :created, location: @lego_set }
      else
        format.html { render :new }
        format.json { render json: @lego_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lego_sets/1
  # PATCH/PUT /lego_sets/1.json
  def update
    respond_to do |format|
      if @lego_set.update(lego_set_params)
        format.html { redirect_to @lego_set, notice: 'Lego set was successfully updated.' }
        format.json { render :show, status: :ok, location: @lego_set }
      else
        format.html { render :edit }
        format.json { render json: @lego_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lego_sets/1
  # DELETE /lego_sets/1.json
  def destroy
    @lego_set.destroy
    respond_to do |format|
      format.html { redirect_to lego_sets_url, notice: 'Lego set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lego_set
      @lego_set = LegoSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lego_set_params
      params.require(:lego_set).permit(:set, :name, :link, :user_id, :description, :theme)
    end
end
