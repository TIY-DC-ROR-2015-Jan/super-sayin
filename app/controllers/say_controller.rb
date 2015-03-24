class SayController < ApplicationController
  def handle_test
    SayWorker.perform_async params[:phrase], params[:wait].to_i
    flash[:notice] = "Working on it!"
    redirect_to "/"
  end

  def test
  end
end
