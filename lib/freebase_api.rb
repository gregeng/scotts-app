class FreebaseApi

FREEBASE_URL = Addressable::URI.parse('https://www.googleapis.com/freebase/v1/mqlread')

  def self.common_movies(actor_1="Amy Poehler",actor_2="Tina Fey")
    query =
      [{
        "a:starring"=> [{"actor"=> actor_1 }],
        "b:starring"=> [{"actor"=> actor_2 }],
        "name"=> [],
        "type"=> "/film/film"
      }]

    response = freebase_magic(query)
    movies = response['result'].collect { |movie| movie['name'] }
    movies.flatten
  end

  def self.freebase_magic(query)
    FREEBASE_URL.query_values = {
        'query' => query.to_json,
        'key'=> ENV['API_KEY']
      }

    HTTParty.get(FREEBASE_URL, :format => :json)
  end


end
