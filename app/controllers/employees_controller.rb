class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]


  # GET /employees/1
  # GET /employees/1.json
  def show
    @firm = Firm.find(params[:firm_id])

  end

  # GET /employees/new
  def new
    @firm = Firm.find(params[:firm_id])
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
    @firm = Firm.find(params[:firm_id])
  end

  def edit_preferences
    @firm = Firm.find(params[:firm_id])
    @employee = Employee.find(params[:id])
  end

  def request_off
    @firm = Firm.find(params[:firm_id])
    @employee = Employee.find(params[:id])
  end

  def handle_request_off
    @firm = Firm.find(params[:firm_id])
    @employee = Employee.find(params[:id])
    the_day = params[:request_off_date]

    @employee.request_off(the_day)
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @firm, notice: 'Day off was requested.' }
      else
        format.html { render :new }
      end
    end

  end


  # POST /employees
  # POST /employees.json
  def create
    @firm = Firm.find(params[:firm_id])
    @employee = @firm.employees.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @firm, notice: 'Employee was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
  @firm = Firm.find(params[:firm_id])
  @employee = Employee.find(params[:id])

    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @firm, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email_address, :phone_number,
          :hourly_pay_rate, :overtime_exempt, :overtime_multiplier, :lunch_duration, :max_hours_hard_limit,
          :hours_overtime_threshold, :mon_pref, :tue_pref, :wed_pref, :thu_pref, :fri_pref, :sat_pref, :sun_pref,
           :request_off_date
      )
    end
end
