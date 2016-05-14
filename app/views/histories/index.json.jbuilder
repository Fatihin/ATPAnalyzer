json.array!(@histories) do |history|
  json.extract! history, :id, :history_id, :lec_id, :bidang_id, :unjuran_id, :fac_id, :year
  json.url history_url(history, format: :json)
end
