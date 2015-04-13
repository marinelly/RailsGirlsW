class ApiController < ApplicationController
  def index
  	client = Twitter::REST::Client.new do |config|
	  config.consumer_key    = "Ej9LKEWF0zLm7bS8ZtPA"
	  config.consumer_secret = "94493yOy5ERspcdNV30Sa9FSeWKfULWCsKUZCjbCok"
	end
  	
	list = URI.parse('https://twitter.com/sferik/presidents')
	#list = URI.parse('https://twitter.com/danilogarcia024')
	#client.user('danilogarcia024')
	
	@tweets = client.list_timeline(list) 

  	#@tweets = client.get_all_tweets("danilogarcia024")
  end
end
