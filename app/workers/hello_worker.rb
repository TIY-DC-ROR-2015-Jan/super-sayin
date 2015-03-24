class HelloWorker
  include Sidekiq::Worker

  def perform user_id
    user = User.find user_id
    Sayer.new.say "Hello, #{user.email}"
  end
end
