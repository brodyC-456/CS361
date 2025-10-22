class My_File_API

  def initialize(file_name):
    @file_name = file_name
    @file_pointer = self.my_open_file
  end

  def my_open_file
    open_file(@file_name)
  end

  def my_read_data
    read_data(@file_pointer)
  end

  def my_write_data(data)
    write_data(@file_pointer, data)
  end

  def my_close_file
    close_file(@file_pointer)
  end


file = My_File_API.new("example.txt")



    

