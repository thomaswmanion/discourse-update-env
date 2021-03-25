ENV.keys.select { |k| k =~ /^DISCOURSE_/ }.each { |k| 
  newname = k[10..-1].downcase.to_sym
  val = ENV[k]
  puts "Setting " + newname
  GlobalSetting.register(newname, val)
}
puts "All DISCOURSE_ variables are registered on Global Settings"
