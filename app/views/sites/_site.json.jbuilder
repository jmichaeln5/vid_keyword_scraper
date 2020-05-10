json.extract! site, :id, :link, :title, :keyword, :created_at, :updated_at
json.url site_url(site, format: :json)
