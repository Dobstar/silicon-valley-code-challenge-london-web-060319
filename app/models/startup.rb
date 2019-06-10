class Startup

    attr_reader :founder, :domain
    attr_accessor :name

    @@all = []

    def initialize(name:, founder:, domain:)
        @name = name
        @founder = founder 
        @domain = domain
        @@all << self
    end 

    def self.all
        @@all
    end

    def pivot(domain:,name:)
        @domain = domain
        @name = name 
    end
    def self.find_by_founder(founder)
        Startup.all.find {|f| f.founder == founder }
    end 
    def self.domains
        all.select{|startup| startup.domain}
    end 

    def sign_contract(vc, type, investment)
        FundingRound.new(self, vc, type, investment)
    end 
    
    def funding_rounds
        FundingRound.all.select{|fr| fr.startup == self}
    end 

    def new_funding_rounds
        funding_rounds.count
    end

    def total_funds
        funding_rounds.sum(&:investment)
    end 

    def investors
        funding_rounds.map{|fr| fr.venture_capitalist}.uniq
    end 

    def big_investors
        investors.map{|vc| venture_capitalist.tres_commas_club.include?(vc)}
    end

end
