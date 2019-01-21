Apipie.configure do |config|
  config.app_name                = "MarketplaceApi"
  config.api_base_url            = ""
  config.doc_base_url            = "api/v1/apipie"
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/api/v1/{[!concerns/]**/*,*}.rb"
end
