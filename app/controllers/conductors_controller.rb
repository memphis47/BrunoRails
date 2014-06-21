class ConductorsController < ApplicationController
  before_action :set_conductor, only: [:show, :edit, :update, :destroy]

  # GET /conductors
  # GET /conductors.json
  def index
    @conductors = Conductor.all

  end

  # GET /conductors/1
  # GET /conductors/1.json
  def show
  end

  # GET /conductors/new
  def new
    @conductor = Conductor.new
    @orchestra = Orchestra.find(:all)
  end

  # GET /conductors/1/edit
  def edit
    @orchestra = Orchestra.find(:all)
  end

  # POST /conductors
  # POST /conductors.json
  def create
    @conductor = Conductor.new(conductor_params)

    respond_to do |format|
      if @conductor.save
        format.html { redirect_to @conductor, notice: 'Conductor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @conductor }
      else
        format.html { render action: 'new' }
        format.json { render json: @conductor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conductors/1
  # PATCH/PUT /conductors/1.json
  def update
    respond_to do |format|
      if @conductor.update(conductor_params)
        format.html { redirect_to @conductor, notice: 'Conductor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @conductor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conductors/1
  # DELETE /conductors/1.json
  def destroy
    @conductor.destroy
    respond_to do |format|
      format.html { redirect_to conductors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conductor
      @conductor = Conductor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conductor_params
      params.require(:conductor).permit(:name, :age)
    end
end
