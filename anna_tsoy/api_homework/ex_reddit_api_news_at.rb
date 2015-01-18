# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"
require 'pry'
require 'pry-byebug'

require "rest_client"
require "JSON"


mashable_json = JSON.load(RestClient.get('http://mashable.com/stories.json'))
binding.pry

digg_json = JSON.load(RestClient.get('http://digg.com/api/news/popular.json'))

# def getting_stories

# end