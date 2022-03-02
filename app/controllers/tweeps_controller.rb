class TweepsController < ApplicationController

  #retorna json e html
  # decorator no json
  #criar most mentions

  def most_relevants
    TweepsService.new.most_relevants
  end

  def most_mentions
  end

end
