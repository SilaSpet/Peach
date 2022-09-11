class DiaryEntriesController < ApplicationController
  before_action :set_diary_entry, only: %i[edit update destroy]

  def index
    @diary_entries = current_account.diary_entries.includes(
      body_measurements: :body_measurement_key
    ).order(taken_at: :asc).load
  end

  def new
    @diary_entry = current_account.diary_entries.new
  end

  def edit
  end

  def create
    @diary_entry = current_account.diary_entries.new(diary_entry_params)

    if @diary_entry.save
      redirect_to(diary_entries_url, notice: "Diary Entry was successfully created.")
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def update
    if @diary_entry.update(diary_entry_params)
      redirect_to(diary_entries_url, notice: "Diary Entry was successfully updated.")
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @diary_entry.destroy

    redirect_to(diary_entries_url, notice: "Diary Entry was successfully destroyed.")
  end

  private

  def set_diary_entry
    @diary_entry = current_account.diary_entries.find(params[:id])
  end

  def diary_entry_params
    params.require(:diary_entry).permit(
      :measurements,
      :description,
      :taken_at,
      body_measurements_attributes: [
        :id,
        :body_measurement_key_id,
        :value,
      ]
    )
  end
end
