class DriveThroughsController < ApplicationController
  before_action :set_drive_through, only: [:show, :edit, :update, :destroy]

  # GET /drive_throughs
  # GET /drive_throughs.json
  def index
    @drive_throughs = DriveThrough.all
  end

  # GET /drive_throughs/1
  # GET /drive_throughs/1.json
  def show
  end

  # GET /drive_throughs/new
  def new
    @drive_through = DriveThrough.new
  end

  # GET /drive_throughs/1/edit
  def edit
  end

  # POST /drive_throughs
  # POST /drive_throughs.json
  def create
    @drive_through = DriveThrough.new(drive_through_params)

    respond_to do |format|
      if @drive_through.save
        format.html { redirect_to @drive_through, notice: 'Drive through was successfully created.' }
        format.json { render :show, status: :created, location: @drive_through }
      else
        format.html { render :new }
        format.json { render json: @drive_through.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drive_throughs/1
  # PATCH/PUT /drive_throughs/1.json
  def update
    respond_to do |format|
      if @drive_through.update(drive_through_params)
        format.html { redirect_to @drive_through, notice: 'Drive through was successfully updated.' }
        format.json { render :show, status: :ok, location: @drive_through }
      else
        format.html { render :edit }
        format.json { render json: @drive_through.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drive_throughs/1
  # DELETE /drive_throughs/1.json
  def destroy
    @drive_through.destroy
    respond_to do |format|
      format.html { redirect_to drive_throughs_url, notice: 'Drive through was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drive_through
      @drive_through = DriveThrough.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drive_through_params
      params.require(:drive_through).permit(:user_id, :food, :total_macros)
    end
end
