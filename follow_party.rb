# require 'mechanize'
# SKIPPERS = ['http://socrates.devbootcamp.com/users/350',
# 'http://socrates.devbootcamp.com/users/257',
# 'http://socrates.devbootcamp.com/users/272',
# 'http://socrates.devbootcamp.com/users/232',
# 'http://socrates.devbootcamp.com/users/270',
# 'http://socrates.devbootcamp.com/users/351',
# 'http://socrates.devbootcamp.com/users/248',
# 'http://socrates.devbootcamp.com/users/265',
# 'http://socrates.devbootcamp.com/users/267',
# 'http://socrates.devbootcamp.com/users/266',
# 'http://socrates.devbootcamp.com/users/260',
# 'http://socrates.devbootcamp.com/users/273',
# 'http://socrates.devbootcamp.com/users/261',
# 'http://socrates.devbootcamp.com/users/352',
# 'http://socrates.devbootcamp.com/users/262']

# GOPHERS = ['http://socrates.devbootcamp.com/users/241',
# 'http://socrates.devbootcamp.com/users/243',
# 'http://socrates.devbootcamp.com/users/269',
# 'http://socrates.devbootcamp.com/users/323',
# 'http://socrates.devbootcamp.com/users/318',
# 'http://socrates.devbootcamp.com/users/263',
# 'http://socrates.devbootcamp.com/users/316',
# 'http://socrates.devbootcamp.com/users/325',
# 'http://socrates.devbootcamp.com/users/220',
# 'http://socrates.devbootcamp.com/users/264',
# 'http://socrates.devbootcamp.com/users/330',
# 'http://socrates.devbootcamp.com/users/320',
# 'http://socrates.devbootcamp.com/users/315'
# ]

# ADMIRALS = ["http://socrates.devbootcamp.com/users/314",
# "http://socrates.devbootcamp.com/users/319",
# "http://socrates.devbootcamp.com/users/361",
# "http://socrates.devbootcamp.com/users/486",
# "http://socrates.devbootcamp.com/users/363",
# "http://socrates.devbootcamp.com/users/401",
# "http://socrates.devbootcamp.com/users/366",
# "http://socrates.devbootcamp.com/users/373",
# "http://socrates.devbootcamp.com/users/362",
# "http://socrates.devbootcamp.com/users/375",
# "http://socrates.devbootcamp.com/users/364",
# "http://socrates.devbootcamp.com/users/271",
# "http://socrates.devbootcamp.com/users/374",
# "http://socrates.devbootcamp.com/users/329",
# "http://socrates.devbootcamp.com/users/358",
# "http://socrates.devbootcamp.com/users/317",
# "http://socrates.devbootcamp.com/users/367",
# "http://socrates.devbootcamp.com/users/359"]

# LIZARDS = ['http://socrates.devbootcamp.com/users/435',
# 'http://socrates.devbootcamp.com/users/428',
# 'http://socrates.devbootcamp.com/users/331',
# 'http://socrates.devbootcamp.com/users/423',
# 'http://socrates.devbootcamp.com/users/431',
# 'http://socrates.devbootcamp.com/users/433',
# 'http://socrates.devbootcamp.com/users/429',
# 'http://socrates.devbootcamp.com/users/432',
# 'http://socrates.devbootcamp.com/users/146',
# 'http://socrates.devbootcamp.com/users/439',
# 'http://socrates.devbootcamp.com/users/424',
# 'http://socrates.devbootcamp.com/users/327',
# 'http://socrates.devbootcamp.com/users/422',
# 'http://socrates.devbootcamp.com/users/425',
# 'http://socrates.devbootcamp.com/users/426',
# 'http://socrates.devbootcamp.com/users/437',
# 'http://socrates.devbootcamp.com/users/371']

# FOXES = ['http://socrates.devbootcamp.com/users/484',
# 'http://socrates.devbootcamp.com/users/488',
# 'http://socrates.devbootcamp.com/users/479',
# 'http://socrates.devbootcamp.com/users/489',
# 'http://socrates.devbootcamp.com/users/324',
# 'http://socrates.devbootcamp.com/users/491',
# 'http://socrates.devbootcamp.com/users/487',
# 'http://socrates.devbootcamp.com/users/430',
# 'http://socrates.devbootcamp.com/users/400',
# 'http://socrates.devbootcamp.com/users/492',
# 'http://socrates.devbootcamp.com/users/490',
# 'http://socrates.devbootcamp.com/users/482',
# 'http://socrates.devbootcamp.com/users/434',
# 'http://socrates.devbootcamp.com/users/485',
# 'http://socrates.devbootcamp.com/users/369',
# 'http://socrates.devbootcamp.com/users/478',
# 'http://socrates.devbootcamp.com/users/495',
# 'http://socrates.devbootcamp.com/users/493']

# MARTINS = ['http://socrates.devbootcamp.com/users/321',
# 'http://socrates.devbootcamp.com/users/535',
# 'http://socrates.devbootcamp.com/users/540',
# 'http://socrates.devbootcamp.com/users/640',
# 'http://socrates.devbootcamp.com/users/538',
# 'http://socrates.devbootcamp.com/users/541',
# 'http://socrates.devbootcamp.com/users/551',
# 'http://socrates.devbootcamp.com/users/544',
# 'http://socrates.devbootcamp.com/users/556',
# 'http://socrates.devbootcamp.com/users/539',
# 'http://socrates.devbootcamp.com/users/360',
# 'http://socrates.devbootcamp.com/users/537',
# 'http://socrates.devbootcamp.com/users/542',
# 'http://socrates.devbootcamp.com/users/546',
# 'http://socrates.devbootcamp.com/users/480',
# 'http://socrates.devbootcamp.com/users/543',
# 'http://socrates.devbootcamp.com/users/545',
# 'http://socrates.devbootcamp.com/users/554',
# 'http://socrates.devbootcamp.com/users/536']

# ALL = [SKIPPERS, GOPHERS, ADMIRALS, LIZARDS, FOXES, MARTINS]

# ALL.each do |cohort|
#   @usernames = []

#   cohort.each do |student|
#     page = agent.get(student)
#     @usernames << page.links[23].text.slice(19..-1)
#     sleep(1)
#   end

#   p @usernames
# end

require 'octokit'

SKIPPERS = ["angiebui", "ctorstens", "fmackojc", "jkaihsu", "avalon9000", "KristineHines", "malchak", "patscan", "juniorSE7EN", "seanbr", "slicebo123", "sidazhang", "Stephenitis", "SamSamskies", "vincentstorme"]
GOPHERS = ["acsart", "allenwlee", "alukima", "TalkativeTree", "DexterV", "kenrett", "kayline", "NathanielWroblewski", "RobertKim", "Ryan5231", "thomasstephane", "TravisL12", "ysadka"]
ADMIRALS = ["avanishgiri", "pope1280", "eadonj", "yeehaa123", "jmiramant", "lilliealbert", "netelder", "mariapacana", "mattbarackman", "nas887", "NicholasKirchner", "pyluftig", "atawmicpm", "renatalalala", "shivpkumar", "wctej89", "UzmaKR", "wilwizard"]
LIZARDS = ["ariannasavant", "byee322", "barcher", "cemmanuel1", "supertopher", "Tambling", "hussain283", "JFickel", "jaredsmithse", "jlbyrne", "mcarthurgill", "kvanderd", "laumontemayor", "seaseng", "nbwar", "rowlandyj", "rttong"]
FOXES = ["adamloo85", "ClintFMullins", "cpilegard", "syn-splendidus", "gregRV", "Githerdone", "jaredstander", "btomori", "mehagel", "mjseaman"]
MARTINS = ["alexfiore", "nirudh-eka", "ChapmanSnowden", "SmilinColleen", "a656184", "abianuribe", "jeffchang", "tlai", "RainMonster"]

puts "Enter your Github username"
username = gets.chomp

puts "Enter your Github password"
password = gets.chomp

@client = Octokit::Client.new(:login => username, :password => password)

def follow
  puts "Control + C to exit"
  puts "Enter one of the following names to follow everyone in that cohort:"
  puts "Skippers\nGophers\nAdmirals\nLizards\nFoxes\nMartins\n"
  cohort = gets.chomp

  Kernel.const_get(cohort.upcase).each do |student|
    @client.follow(student)
    puts "Just followed: #{student}"
    sleep(1)
  end
  puts "\nDone Bro!"
  puts
end

follow




