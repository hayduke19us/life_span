Given /^the subject has not entered their info$/ do
end
When /^the subject enters their name and age and sex$/ do
  life = Life::Subject.new(age: 29, name: 'matthew', sex: 'male' )
end
Then /^the subject will recieve the message "([^"]*)"$/ do |lifespan|
  life = Life::Subject.new(age: 29, name: 'matthew', sex: 'male' )  
  life.message
end

class Output
  def messages
    @messages ||= []
  end
  def puts(message)
    messages << message
  end
end

def output
  @output ||= Output.new
end
