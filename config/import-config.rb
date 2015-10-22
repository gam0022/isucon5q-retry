if ARGV.size != 1
  puts "example: ruby import-config.rb /etc/my.cnf"
end

def execute_shell(command)
  puts "#{command}"
  puts `#{command}`
end

src = File.absolute_path(ARGV[0])
execute_shell "sudo mv #{src} ."
execute_shell "sudo ln -sf #{Dir.getwd}/#{File.basename(src)} #{src}"
execute_shell "ls -al #{src}"
