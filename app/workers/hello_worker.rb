class HelloWorker < ActiveJob::Base
  def perform user
    Sayer.new.say "Hello, #{user.email}"
  end
end
