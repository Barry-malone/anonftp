print <<EOF
    _________________________________________________
    A simple quick anonymous FTP server login script.
    Written by Barry Malone
    _________________________________________________
EOF

require 'net/ftp'

puts " "
puts "enter server name/ip:"

SERVER = gets.chomp
SERVER_USERNAME = "anonymous"
SERVER_PASSWORD = "anonymous"

Net::FTP.open(server, SERVER_USERNAME, SERVER_PASSWORD) do |ftp|
  files = ftp.list

  puts "list out files in root directory:"
  puts files
end