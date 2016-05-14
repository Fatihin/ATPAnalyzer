json.array!(@workloads) do |workload|
  json.extract! workload, :id, :load_id, :lec_id, :ks_dip, :ps_dip, :ks_deg, :ps_deg, :total_dip, :total_deg, :ks_postgrade, :ps_postgrade, :total_postgrade, :k1, :k2, :k3, :KTS, :ATP
  json.url workload_url(workload, format: :json)
end
