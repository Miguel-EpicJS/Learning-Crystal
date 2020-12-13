require "option_parser"

the_beatles = [
    "John Lennon",
    "Paul McCartney",
    "George Harrison",
    "Ringo Starr"
]
shout = false

say_hi_to = ""

OptionParser.parse do |parser|
    parser.banner = "Welcome to The Beatles App"
    parser.on "-v", "--version", "Show version" do
        puts "version 0.1"
        exit
    end
    parser.on "-h", "--help", "Show help" do
        puts parser
        exit
    end
    parser.on "-t", "--twist", "Twist and SHOUT" do
        shout = true
    end
    parser.on "-g NAME", "--goodbye_hello=NAME", "Say hello to whoever you want" do |name|
        say_hi_to = name
    end
end

members = the_beatles
members = the_beatles.map &.upcase if shout

puts ""
puts "Group members:"
puts "=============="
members.each do |member|
  puts member
end

unless say_hi_to.empty?
    puts ""
    puts "You say goodbye, and #{the_beatles.sample} says hello to #{say_hi_to}!"
end