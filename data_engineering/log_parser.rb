filename = 'data/access_log_20190521-211058.log'

access_log = File.open(filename,'r') do |f|
  f.read
end

puts access_log.length
