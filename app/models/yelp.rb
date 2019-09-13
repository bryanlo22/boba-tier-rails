class Yelp
  def self.get(path)
    Rails.cache.fetch(path) do
      HTTParty.get(
        "https://api.yelp.com/v3#{path}",
        headers: {
          authorization: "Bearer #{ENV['YELP_SECRET']}",
        }
      )
    end
  end

  def self.search_businesses(options)
    self.get("/businesses/search?#{options.to_query}")
  end

  def self.get_business(business_id)
    self.get("/businesses/#{business_id}")
  end

  def self.get_business_reviews(business_id)
    self.get("/businesses/#{business_id}/reviews")
  end
end
