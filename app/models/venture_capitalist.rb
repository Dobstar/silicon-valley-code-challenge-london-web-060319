class VentureCapitalist

    attr_accessor :name, :total_worth

    @@all = []

    def initialize(name:,total_worth:)
        @name = name
        @total_worth
        @@all << self
    end 

    def self.all
        @@all
    end 
    
    def self.tres_commas_club
    all.select{|vc| vc.total_worth > 1000000000}
    end
    
    def offer_contract(startup, type, investment)
        FundingRound.new(startup, type, investment)
    end 

    def funding_rounds
        FundingRound.all.select {|fr| fr.venture_capitalist == self}
    end 

    def portfolio
        funding_rounds.map {|fr| fr.startup}.uniq
    end 
end 

    def biggest_investment
        funding_rounds.max_by{|fr|fr.investment}
    end 
end 

    def invested(domain)
        rounds_by_domain = funding_rounds.select{|fr| fr.startup.domain == domain}
        rounds_by_domain.sum(&:investment)
    end 
end