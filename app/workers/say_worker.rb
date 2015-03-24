class SayWorker
  include Sidekiq::Worker

  def perform phrase, time=2
    if rand < 0.6
      raise "Something went wrong"
    end

    sayer = Sayer.new
    sayer.say "Starting job"
    sayer.say "Should take #{time} seconds"
    sleep time
    sayer.say phrase
    sayer.say "Done!"
  end
end
