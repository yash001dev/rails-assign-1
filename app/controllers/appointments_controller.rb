class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]
  before_action :set_physician
  before_action :set_patient, only: [:new, :create]

  # GET /appointments or /appointments.json
  def index
    @appointments = @physician.appointments.order(:appoinment_date)
  end

  # GET /appointments/1 or /appointments/1.json
  def show
    @patient = @appointment.patient.find(params[:id])
    @physician = @appointment.physician.find(params[:id])
  end

  # GET /appointments/new
  def new
    @appointment = @physician.appointments.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = @physician.appointments.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to physician_appointments_path, notice: "Appointment was successfully created." }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @physician.appointments.update(appointment_params)
        format.html { redirect_to physician_appointments_path, notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @physician.appointments.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to physician_appointments_path, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def set_physician
    @physician = Physician.find(params[:physician_id])
  end

  def set_patient
    @patient = Patient.all.order(:email) - @physician.patients
  end

  # Only allow a list of trusted parameters through.
  def appointment_params
    params.require(:appointment).permit(:appoinment_date, :patient_id, :physician_id)
  end
end
