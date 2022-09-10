module DiaryEntriesHelper
  def diary_entries_chart_labels
    @diary_entries.pluck(:taken_at).map { |date| date.strftime("%d.%m.%Y") }.to_json
  end

  # We look for each BodyMeasurementKey in the DiaryEntries, get the value of the associated BodyMeasurement
  # and put it inside the dataset array together with some entries for the chart.js library.
  def diary_entries_chart_values
    body_measurement_key = current_account.body_measurement_keys.uniq

    datasets = []

    body_measurement_key.each do |bmk|
      data = []

      @diary_entries.each do |diary_entry|
        data << diary_entry.body_measurements.select do |bm|
          bm.body_measurement_key_id == bmk.id
        end.pluck(:value).join(", ")
      end

      color = "rgb(#{3.times.map { Random.rand(0..256) }.join(", ")})"

      datasets << {
        label: bmk.name,
        backgroundColor: color,
        borderColor: color,
        data: data,
        cubicInterpolationMode: "monotone",
        tension: 0.4,
      }
    end

    datasets.to_json
  end
end
