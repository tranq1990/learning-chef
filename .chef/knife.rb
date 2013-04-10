current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "tranq"
client_key               "#{current_dir}/tranq.pem"
validation_client_name   "firsttest1-validator"
validation_key           "#{current_dir}/firsttest1-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/firsttest1"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{ENV['HOME']}/chef-repo/cookbooks"]
http_proxy		         "http://proxy.ext.ray.com:80"
https_proxy	         "http://proxy.ext.ray.com:80"

require 'rest-client'
RestClient.proxy = "http://proxy.ext.ray.com:80"
