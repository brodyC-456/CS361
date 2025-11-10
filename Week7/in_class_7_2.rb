class Logger
  def event(s)
    puts s
  end

  def warning(s)
    warn s
  end
end

$logger = Logger.new

class Divider
  def initialize(logger)
    @logger = logger
  end

  def divide(a, b)
    if b == 0
      $logger.warning("division by zero")
      return nil
    end
    $logger.event("dividing #{a} by #{b}")
    a / b
  end
end

d = Divider.new($logger)

d.divide(1,2)
d.divide(10,5)
d.divide(99,0)