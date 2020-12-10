require 'csv'

def parse_log
  filename = 'data/access_log_20190521-211058.log'

  access_log_lines = File.open(filename, 'r') do |f|
    f.readlines
  end

  signup_log_lines = access_log_lines.select do |line|
    line.include?('/signup?email=')
  end

  user_data = signup_log_lines.map do |line|
    parsed_array = line.split('" "')
    email = extract_email(parsed_array.first)
    user_agent_string = parsed_array.last
    browser = determine_browser(user_agent_string)
    [email, browser]
  end

  # puts user_data
end

def determine_browser(user_agent)
  return 'Firefox' if user_agent.include?('Firefox') && user_agent.include?('Gecko')
  return 'Chrome' if user_agent.include?('Chrome')
  return 'Safari' if user_agent.include?('Gecko') && user_agent.include?('Safari')

  'Other'
end

def extract_email(log_line)
  email = log_line.match(%r{signup\?email=([a-zA-Z0-9@.]*) HTTP/})
  email.captures.first
end

def cross_reference(_log_line)
  users = CSV.open('data/users.csv') do |csv|
    csv.readlines
  end

  users.map! do |line|
    if line.length == 3
      line[0] = 'Unknown' if line[0].nil?
      line[1] = 'Unknown' if line[1].nil?
    elsif line[0].match(/[a-zA-Z0-9@.]*/)
      email = line[0]
      line[0] = 'Unknown'
      line.push('Unknown')
      line.push(email)
    end

    line
  end
end

cross_reference('')

pp parse_log
