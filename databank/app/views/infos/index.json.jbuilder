json.array!(@infos) do |info|
  json.extract! info, :id, :name, :fm_no, :charge_code, :project_name, :portfolio, :remarks, :non_billable, :released, :weekinfo_id
  json.url info_url(info, format: :json)
end
