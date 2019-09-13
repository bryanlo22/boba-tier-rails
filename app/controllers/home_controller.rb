class HomeController < ApplicationController
  def home
    @shops = Yelp.search_businesses({
      location: 'Los Angeles',
      categories: 'bubbletea',
      sort_by: 'rating',
    })['businesses']
  end
end
