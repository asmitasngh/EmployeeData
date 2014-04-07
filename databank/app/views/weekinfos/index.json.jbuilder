json.array!(@weekinfos) do |weekinfo|
  json.extract! weekinfo, :id, :from_date
  json.url weekinfo_url(weekinfo, format: :json)
end
