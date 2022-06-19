require 'net/http'
require 'json'
require 'byebug'

class Assign
	attr_accessor :login, :id, :node_id, :avatar_url, :gravatar_id, :url, :html_url, :followers_url, :following_url

	def initialize(login, id, node_id, avatar_url, gravatar_id, url, html_url, followers_url, following_url)
	    @login = login
	    @id = id 
	    @node_id = node_id 
	    @avatar_url = avatar_url 
	    @gravatar_id = gravatar_id 
	    @url = url 
	    @html_url = html_url 
	    @followers_url = followers_url 
	    @following_url = following_url 
	end

	def instance_method
		puts @login
	end
end

uri = URI('https://api.github.com/users')
# res = Net::HTTP.get(uri)
res = JSON.parse(Net::HTTP.get(uri))
# res = JSON.parse(data)
# debugger
residents = res.map do |rd|
	# debugger
	obj = Assign.new(rd['login'], rd['id'], rd['node_id'], rd['avatar_url'], rd['gravatar_id'], rd['url'], rd['html_url'], rd['followers_url'], rd['following_url'])
	obj.instance_method
end