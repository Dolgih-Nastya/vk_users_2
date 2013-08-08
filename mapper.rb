require_relative 'user'
class Mapper
  # To change this template use File | Settings | File Templates.
  def create_users_by_hashes(users_data)
    users=Array.new
    users_data.each do |data|
      users.push(User.new(data))
    end
    users
  end
end