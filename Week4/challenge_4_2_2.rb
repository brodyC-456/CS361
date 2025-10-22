# You can't modify this code

class SidewinderJoystick
  BUTTON_UP = 2
  BUTTON_DOWN = 3

  def get_x_axis(stick_id) # returns -1.0 to 1.0
  def get_y_axis(stick_id) # returns -1.0 to 1.0
  def button(button_id)  # Returns BUTTON_UP or BUTTON_DOWN
end

class Player
  def initialize(joystick)
    @x = 0
    @y = 0
    @joystick = joystick
  end

  def update()   # called every game frame
    @x += @joystick.get_x(1)
    @y += @joystick.get_y(1)

    if @joystick.laser_button_pressed?
      self.fire_lasers()
    end

    self.update_graphics()
  end

  # ...

end

if config.joystick == SIDEWINDER
  joystick = WrappedSidewinderJoystick.new
elsif config.joystick == XBOX
  joystick = WrappedXboxController.new
end

p = Player.new(joystick)

# ... Game code continues ...


# You can't modify this code

class XboxGamepad
  def get_x_axis(stick_id) # returns -128 to 127
  def get_y_axis(stick_id) # returns -128 to 127
  def button_status(button_id)  # float from 0.0 (up) to 1.0 (down)
end



class WrappedSidewinderJoystick
    def initialize
        @joystick = SidewinderJoystick.new
    end

    def get_x(stick_id)
        @joystick.get_x_axis(stick_id)
    end

    def get_y(stick_id)
        @joystick.get_y_axis(stick_id)
    end

    def laser_button_pressed?
        if @joystick.button(4) == BUTTON_DOWN
            true
        else
            false
        end
    end

class WrappedXboxGamepad
    def initialize
      @gamepad = XboxGamepad.new
    end

    def get_x(stick_id)
      value = @gamepad.get_x_axis(stick_id)
      if value < 0
        value = value / -128
      end
      if value >= 0
        value = value / 127
      end
      value
    end

    def get_y(stick_id)
      value = @gamepad.get_y_axis(stick_id)
      if value < 0
        value = value / -128
      end
      if value >= 0
        value = value / 127
      end
      value
    end

    def laser_button_pressed?
      if @gamepad.button(4) == 1.0
        true
      else
        false
      end
    end



