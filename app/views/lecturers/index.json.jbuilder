json.array!(@lecturers) do |lecturer|
  json.extract! lecturer, :id, :lec_id, :name, :state, :campus, :gred, :ATS_diff, :committee, :trek, :office_admin
  json.url lecturer_url(lecturer, format: :json)
end
