# Exercise 5

class LaunchDiscussionWorkflow

  def initialize(discussion, host, participants)
    @discussion = discussion
    @host = host
    @participants = participants
  end

  # Expects @participants array to be filled with User objects
  def launch_discussion
    return unless valid?
    run_callbacks(:create) do
      ActiveRecord::Base.transaction do
        discussion.save!
        create_discussion_roles!
        @successful = true
      end
    end
  end

  

  # ...

end

class ListOfParticipants
  def initialize(email_string)
    @email_string = parse_email_string(email_string)
  end

  # Adds users created with emails from the email string to the participants array, and returns the full list of participants
  def generate_participant_users_from_email_string
    participants = []
    @email_string do |email_address|
      @participants.append(User.create(email: email_address.downcase, password: Devise.friendly_token))
    end
    participants
  end

  # Splits up the email string into a list of email addresses
  def parse_email_string(email_string)
    return [] if email_string.blank?
    email_string = email_string.split.uniq.map
  end
end

email_string = "fake1@example.com\nfake2@example.com\nfake3@example.com"

# Creates the components we need to launch our discussion
discussion = Discussion.new(title: "fake", ...)
host = User.find(42)
participants = ListOfParticipants.new(email_string).generate_participant_users_from_email_string

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.launch_discussion



"""
Notes from class:

- Not all instance variables are used? (Host, participants)
- Hard to read
- Code didnt explain itself, no comments
- big string splitting method is out of place
- Users should maybe be in its own class
- Run should be more descriptive (run_discussion?), we dont really know the intent
- 



"""