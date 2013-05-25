class Story < ActiveRecord::Base
  def self.search_for(query)
    where('title LIKE :search_query OR category LIKE :search_query', search_query: "%#{query}%")
  end
end
