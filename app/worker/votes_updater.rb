class VotesUpdater
  include Sidekiq::Worker

  def perform
    response = Typhoeus.get('https://volbysr.sk/sk/index.html')

    data = []

    # TODO:
    # parse +row+ => +:party_number+ +:votes+ and +percentage+
    data.each do |row|
      party = Party.find_by_party_number(row[:party_number])
      party.update!(votes: row[:votes], percentage: row[:percentage])
    end
  end
end
