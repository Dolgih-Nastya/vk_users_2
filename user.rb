class User
    attr_accessor :id, :first_name, :last_name
    def initialize (hash)
      @id=hash['uid']
      @first_name=hash['first_name']
      @last_name=hash['last_name']
    end
  end
