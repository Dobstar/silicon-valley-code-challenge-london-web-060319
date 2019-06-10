require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
sup_1 = Startup.new(name:"Aruna",domain:"Domain",founder:"Pascal")
sup_2 = Startup.new(name:"Lily",domain:"Domain2",founder:"Joe")
sup_3 = Startup.new(name:"Le",domain:"Domain3",founder:"Anne-Marie")

vc_1 = VentureCapitalist.new(name:"Stu",total_worth: 100000)
vc_2 = VentureCapitalist.new(name:"Stu",total_worth: 120000)

fr_1 = FundingRound.new(startup:"you", venture_capitalist:"youtu", type:"notsure", investment: 10,)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line