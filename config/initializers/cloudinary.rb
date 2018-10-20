if Rails.env.development?
  #development
  Cloudinary.config do |config|
    config.cloud_name = "openheavensuk"
    config.api_key = ENV["OHC_CLOUDINARY_API_KEY"]
    config.api_secret = ENV["OHC_CLOUDINARY_API_SECRET_KEY"]
    config.cdn_subdomain = true
  end
elsif Rails.env.production?
  # production
  Cloudinary.config do |config|
    config.cloud_name = ENV["CLOUDINARY_CLOUDNAME"]
    config.api_key = ENV["CLOUDINARY_API_KEY"]
    config.api_secret = ENV["CLOUDINARY_API_SECRET_KEY"]
    config.cdn_subdomain = true
    config.secure = true
  end
end


