# Wrap this up so it fires an exception instead of using an error code:
def function_1(x)
    if x == 99
        return nil
    end
   
    x + 1
end

# Wrap this up so that it returns an error code (`nil`) instead of an exception
def function_2(x)
    if x == 99
        raise IndexError
    end
  
    x + 1
end

def function_1_wrapped(x)
  if function_1(x) == nil
    raise IndexError
  end
end

def function_2_wrapped(x)
  begin 
    function_2(x)
  rescue IndexError
    nil
  end
end

puts function_2_wrapped(99).inspect()
puts function_1_wrapped(99)
