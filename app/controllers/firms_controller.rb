class FirmsController < ApplicationController
  before_action :set_firm, only: [:show, :edit, :update, :destroy]

  # GET /firms
  # GET /firms.json
  def index
    @firms = Firm.all
  end

  # GET /firms/1
  # GET /firms/1.json
  def show
  end

  # GET /firms/new
  def new
    @firm = Firm.new
  end

  # GET /firms/1/edit
  def edit
    # would add error-handling here
  end

  # POST /firms
  # POST /firms.json
  def create
    @firm = Firm.new(firm_params)

    respond_to do |format|
      if @firm.save
        format.html { redirect_to @firm, notice: 'Firm was successfully created.' }
        format.json { render :show, status: :created, location: @firm }
      else
        format.html { render :new }
        format.json { render json: @firm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /firms/1
  # PATCH/PUT /firms/1.json
  def update
    # i'd remove the json respond_to block-- this is scaffolding bloat
    respond_to do |format|
      if @firm.update(firm_params)
        format.html { redirect_to @firm, notice: 'Firm was successfully updated.' }
        format.json { render :show, status: :ok, location: @firm }
      else
        format.html { render :edit }
        format.json { render json: @firm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /firms/1
  # DELETE /firms/1.json
  def destroy
    @firm.destroy
    respond_to do |format|
      format.html { redirect_to firms_url, notice: 'Firm was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_firm
      @firm = Firm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def firm_params
      params.require(:firm).permit(:name, :phone_number, :address, :city, :state, :zip_code,
        :mon_open_time, :mon_close_time, :tue_open_time, :tue_close_time,
        :wed_open_time, :wed_close_time, :thu_open_time, :thu_close_time,
        :fri_open_time, :fri_close_time,
      )
    end
end
