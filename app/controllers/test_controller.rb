require 'rubygems'
require 'mongo'
include Mongo

class TestController < ApplicationController
  def index
  end

  def people
 
	var mongo=require("mongodb")
	var serv=mongo.Server("localhost", 27017)
	var dbase=mongo.Db("MyDatabase", serv)
	db_config = YAML::load(File.read("c:/Sites/search/config/database.yml"))
 
		mongo = db_config[Rails.env]
		Mongo::Connection.new("localhost", 27017, :pool_size => 5, :pool_timeout => 5)
		MongoMapper.connection = Mongo::Connection.new(mongo['localhost'])
		MongoMapper.database = mongo['database']

  
	#client=MongoClient.new
	#db = URI.parse(ENV['MONGOHQ_URL'] || 'mongodb://localhost/facebook')
	#db_name = db.path.gsub(/^\//, '')
	#@db_connection = Mongo::Connection
	#@conn = Mongo::Connection.new
	#@db   = @conn['sample-db']
	#@coll = @db['test']

	#@databases = MongoConfig.connection.users
	#db = Mongo::Connection.new.db('search_development')  #connects to localhost on port 27017 by default
	#coll = db.collection("users")
	#coll.insert({:name => 'leto', :loves => 'spice'})
  end

  def keywords
  end
end

