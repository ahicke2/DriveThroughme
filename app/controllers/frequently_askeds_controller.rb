class FrequentlyAskedsController < ApplicationController
  before_action :set_frequently_asked, only: [:show, :edit, :update, :destroy]

  # GET /frequently_askeds
  # GET /frequently_askeds.json
  def index
    @frequently_askeds = FrequentlyAsked.all
  end

  # GET /frequently_askeds/1
  # GET /frequently_askeds/1.json
  def show
  end

  # GET /frequently_askeds/new
  def new
    @frequently_asked = FrequentlyAsked.new
  end

  # GET /frequently_askeds/1/edit
  def edit
  end

  # POST /frequently_askeds
  # POST /frequently_askeds.json
  def create
    @frequently_asked = FrequentlyAsked.new(frequently_asked_params)

    respond_to do |format|
      if @frequently_asked.save
        format.html { redirect_to @frequently_asked, notice: 'Frequently asked was successfully created.' }
        format.json { render :show, status: :created, location: @frequently_asked }
      else
        format.html { render :new }
        format.json { render json: @frequently_asked.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequently_askeds/1
  # PATCH/PUT /frequently_askeds/1.json
  def update
    respond_to do |format|
      if @frequently_asked.update(frequently_asked_params)
        format.html { redirect_to @frequently_asked, notice: 'Frequently asked was successfully updated.' }
        format.json { render :show, status: :ok, location: @frequently_asked }
      else
        format.html { render :edit }
        format.json { render json: @frequently_asked.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequently_askeds/1
  # DELETE /frequently_askeds/1.json
  def destroy
    @frequently_asked.destroy
    respond_to do |format|
      format.html { redirect_to frequently_askeds_url, notice: 'Frequently asked was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequently_asked
      @frequently_asked = FrequentlyAsked.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frequently_asked_params
      params[:frequently_asked]
    end
end
