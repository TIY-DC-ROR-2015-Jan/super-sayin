class SayWorker
  include Sidekiq::Worker

  def perform phrase, time=2
    sayer = Sayer.new
    sayer.say "Starting job"
    sayer.say "Should take #{time} seconds"
    sleep time
    sayer.say phrase
    sayer.say "Done!"
  end
end
