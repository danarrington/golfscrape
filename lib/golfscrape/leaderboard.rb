module Golfscrape
  class Leaderboard
    attr_accessor :tournament, :results

    def initialize
      self.results = []
      self.tournament = Hashie::Mash.new
    end

    def parse_tournament(doc)
      header = doc.css('.headerBlock')
      self.tournament.name = header.css('h4').first.text.gsub(/\u00a0/, ' ')
      self.tournament.par = header.css('.par span').first.text.to_i
    end


  end

end
