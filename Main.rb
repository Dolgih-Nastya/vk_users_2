require_relative 'api_provider'
require_relative 'file_writer'
def get_users
  f_writer=FileWriter.new ('names.txt')
  ids=(1..10000).to_a
  users=ApiProvider.get_users_by_ids(ids)
  users.each {  |user|
    f_writer.write(user)
  }

end

puts 'First 250 vk users'
get_users
puts 'Program is exit'