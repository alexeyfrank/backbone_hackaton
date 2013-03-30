class Web::WelcomeController < ApplicationController
  def index
    @polls = Poll.all
    @sample_poll = Poll.sample.first

    respond_to do |format|
      format.html
      format.json { render :json => @polls }
    end
  end
end
