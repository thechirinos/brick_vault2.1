json.array!(@lego_sets) do |lego_set|
  json.extract! lego_set, :id, :set, :name, :link, :user_id, :description, :theme
  json.url lego_set_url(lego_set, format: :json)
end
