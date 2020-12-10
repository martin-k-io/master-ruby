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

pp parse_log
