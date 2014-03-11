json.array!(@bundles) do |bundle|
  json.extract! bundle, :id, :uid, :description, :bundled_at, :errors, :environment, :firmware_revision
  json.url bundle_url(bundle, format: :json)
end
