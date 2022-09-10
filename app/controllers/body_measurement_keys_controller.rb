class BodyMeasurementKeysController < ApplicationController
  before_action :set_body_measurement_key, only: %i[show edit update destroy]

  def index
    @body_measurement_keys = current_account.body_measurement_keys.all
  end

  def show
  end

  def new
    @body_measurement_key = current_account.body_measurement_keys.new
  end

  def edit
  end

  def create
    @body_measurement_key = current_account.body_measurement_keys.new(body_measurement_key_params)

    if @body_measurement_key.save
      redirect_to(body_measurement_keys_url, notice: "Body measurement key was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def update
    if @body_measurement_key.update(body_measurement_key_params)
      redirect_to(body_measurement_keys_url, notice: "Body measurement key was successfully updated.")
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @body_measurement_key.destroy

    redirect_to(body_measurement_keys_url, notice: "Body measurement key was successfully destroyed.")
  end

  private

  def set_body_measurement_key
    @body_measurement_key = current_account.body_measurement_keys.find(params[:id])
  end

  def body_measurement_key_params
    params.require(:body_measurement_key).permit(:account_id, :name)
  end
end
