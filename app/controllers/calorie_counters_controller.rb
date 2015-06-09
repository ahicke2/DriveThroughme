class CalorieCountersController < ApplicationController
  before_action :set_calorie_counter, only: [:show, :edit, :update, :destroy]

  # GET /calorie_counters
  # GET /calorie_counters.json
  def index
    @calorie_counters = CalorieCounter.all
  end

  # GET /calorie_counters/1
  # GET /calorie_counters/1.json
  def show
  end

  # GET /calorie_counters/new
  def new
    @calorie_counter = CalorieCounter.new
  end

  # GET /calorie_counters/1/edit
  def edit
  end

  # POST /calorie_counters
  # POST /calorie_counters.json
  def create
    @calorie_counter = CalorieCounter.new(calorie_counter_params)

    respond_to do |format|
      if @calorie_counter.save
        format.html { redirect_to @calorie_counter, notice: 'Calorie counter was successfully created.' }
        format.json { render :show, status: :created, location: @calorie_counter }
      else
        format.html { render :new }
        format.json { render json: @calorie_counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calorie_counters/1
  # PATCH/PUT /calorie_counters/1.json
  def update
    respond_to do |format|
      if @calorie_counter.update(calorie_counter_params)
        format.html { redirect_to @calorie_counter, notice: 'Calorie counter was successfully updated.' }
        format.json { render :show, status: :ok, location: @calorie_counter }
      else
        format.html { render :edit }
        format.json { render json: @calorie_counter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calorie_counters/1
  # DELETE /calorie_counters/1.json
  def destroy
    @calorie_counter.destroy
    respond_to do |format|
      format.html { redirect_to calorie_counters_url, notice: 'Calorie counter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calorie_counter
      @calorie_counter = CalorieCounter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calorie_counter_params
      params[:calorie_counter]
    end
end
