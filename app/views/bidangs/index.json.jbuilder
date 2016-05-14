json.array!(@bidangs) do |bidang|
  json.extract! bidang, :id, :bidang_id, :bidang_name, :bidang_desc, :result_bidang, :fac_id
  json.url bidang_url(bidang, format: :json)
end
