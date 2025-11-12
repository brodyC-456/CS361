class MockNetConnection
    def send(r)
        puts "im sending " + r
    end

    def recv
        puts "This is the data i am recieving at this moment right now"
    end

class DataManager
  def initialize(network_connection)
    @network_connection = network_connection
  end

  def send_request(r)
    @network_connection.send(r)  # Send some data
  end

  def recv_response()
    @network_connection.recv()  # Return the received data
  end
end

fake_connection = MockNetConnection.new
real_connection = NetworkConnection.new("example.com")
# TODO: Make DataManager behave differently if testing
if testing
    dm = DataManager.new(fake_connection)
else
    dm = DataManager.new(real_connection)
end

dm.send_request("REQUEST: good things")
good_things = dm.recv_response()