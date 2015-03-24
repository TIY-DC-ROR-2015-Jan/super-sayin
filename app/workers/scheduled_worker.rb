class ScheduledWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { secondly }

  def perform
    #now = Time.now
    #if now.hour >= ...
    Sayer.new.say "tick"
    #end
  end
end
