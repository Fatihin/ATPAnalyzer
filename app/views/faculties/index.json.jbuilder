json.array!(@faculties) do |faculty|
  json.extract! faculty, :id, :fac_id, :fac_name
  json.url faculty_url(faculty, format: :json)
end
