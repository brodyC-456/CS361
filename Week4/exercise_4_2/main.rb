#-------------------------------------------------------------
# Exercise 5 Part 1 (Exception Handling)
#-------------------------------------------------------------

class MentalState
  def auditable?
    # true if the external service is online, otherwise false
  end
  def audit!
    # Could fail if external service is offline
  end
  def do_work
    # Amazing stuff...
  end
end

def audit_sanity(bedtime_mental_state)
  return 0 unless bedtime_mental_state.auditable?

  begin 
    bedtime_mental_state.audit!
    MorningMentalState.new(:ok)
  rescue Exception
    MorningMentalState.new(:not_ok)
    puts "Error: External Service is Offline"
  end

end

if audit_sanity(bedtime_mental_state) == 0
  raise Exception, "External Service is Offline"
else
  new_state = audit_sanity(bedtime_mental_state)
end

#-------------------------------------------------------------
# Exercise 5 Part 2 (Don't Return Null / Null Object Pattern)
#-------------------------------------------------------------

class BedtimeMentalState < MentalState ; end

class MorningMentalState < MentalState ; end

def audit_sanity(bedtime_mental_state)
  return 0 unless bedtime_mental_state.auditable?
  if bedtime_mental_state.audit!.ok?
    MorningMentalState.new(:ok)
  else 
    MorningMentalState.new(:not_ok)
  end
end

new_state = audit_sanity(bedtime_mental_state)
if new_state == 0
    raise Exception, "Audit Failed"
new_state.do_work

#-------------------------------------------------------------
# Exercise 5 Part 3 (Wrapping APIs)
#-------------------------------------------------------------

require 'candy_service'

class WrappedCandyMachine
    def initialize
        @machine = CandyMachine.new
    end

    def prepare
        @machine.prepare
    end

    def ready?
        @machine.ready?
    end

    def make!
        @machine.make!
    end

machine = WrappedCandyMachine.new

machine.prepare

if machine.ready?
  machine.make!
else
  puts "sadness"
end