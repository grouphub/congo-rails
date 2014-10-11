json.array!(@widgets) do |widget|
  json.extract! widget, :id, :name, :user_id
  json.url widget_url(widget, format: :json)
end
