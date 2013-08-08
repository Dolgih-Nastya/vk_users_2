require_relative 'mapper'
class ApiProvider
  require 'httparty'
  include HTTParty
  base_uri 'api.vk.com'
  default_params :output=>'json'
  format :'json'
  @@result='response'
  @mapper=Mapper.new
  def self.get_users_by_ids (ids)
    new_ids=ids.each_slice(200).to_a
    users=Array.new
    new_ids.each do |ids|
    json_response=get('/method/users.get', :query=>{:user_ids=>ids})
    users_data=json_response.parsed_response[@@result]
    users.push(@mapper.create_users_by_hashes(users_data))
    end
    users=users.flatten
  end
end