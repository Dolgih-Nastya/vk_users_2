class FileWriter
    def initialize (f_name)
      @file_name=f_name
      File.delete(@file_name) if File.exists?(@file_name)
    end

    def write (user)
      File.open(@file_name, 'a'){ |f|
        f.write("#{user.id})\t #{user.first_name}\t#{user.last_name}\n")
      }
    end
end
