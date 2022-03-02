class TweepsService
  include HTTParty
  base_uri ConfigApp.api["url"]

  # retorna json
  # formatar o json de retorno
  # criar most mentions
  # deltar gems do gem file
  # bonus: retornar html
  # bonus: cobertuta de teste

  def initialize
    @headers = { Username: ConfigApp.api["user"] }
    @params = { q: ConfigApp.api["locaweb_user"] }
  end

  def tweets
    self.class.get("/search/tweets.json",
                  :query => @params,
                  :headers => @headers)
  end

  def most_relevants
    order(remove_reply(tweets["statuses"]))
  end

  private

  def remove_reply(tweets)
    tweets.reject! { |v| v["in_reply_to_screen_name"] == "locaweb" }
  end

  def order(tweets)
    tweets = order_by_followers(tweets)
    tweets = order_by_retweets(tweets)
    order_by_likes(tweets)
  end

  def order_by_followers(tweets)
    tweets.sort_by{|v| v["user"]["followers_count"]}.reverse
  end

  def order_by_retweets(tweets)
    tweets.sort_by{|v| v["retweet_count"]}.reverse
  end

  def order_by_likes(tweets)
    tweets.sort_by{|v| v["favorite_count"]}.reverse
  end
end
