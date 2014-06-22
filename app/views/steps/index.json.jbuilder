json.array!(@steps) do |step|
  json.extract! step, :id, :article_id, :color_palette, :body
  json.url step_url(step, format: :json)
end
