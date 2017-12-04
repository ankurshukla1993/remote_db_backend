class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def self.check_connection
  	ActiveRecord::Base.establish_connection(:adapter => "postgresql",
										  	:host =>"54.68.28.241",
										  	:port => 5432,
										  	:username => "postgres",
										  	:password => "postgres",
										  	:database => "telemed_development")
  	count = ActiveRecord::Base.connection.execute("Select count(*) from patients").first["count"]
  	puts count
  end
end
