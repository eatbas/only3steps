json.array!(@articles) do |article|
  json.extract! article, :id, :path, :title
  json.url article_url(article, format: :json)
end
