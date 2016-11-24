class TweetsController < ApplicationController
  def index

    rClient = Twitter::REST::Client.new do |config|
      config.consumer_key        = "ROnTd2dKR30LXDDn3xCutey7v"
      config.consumer_secret     = "rQUJPsSaEmEJufyM3asB8KcdUzro9y2JYLBjYj40AvoRYllDcd"
      config.access_token        = "130191882-whhRyj8rTFmAmFW87L3vLnjNGAhPv7vvxq43ewvn"
      config.access_token_secret = "08dr8LRBr9kmdcfUqOudbQx85QBbMUOg4eNno2Y4gFB3i"
    end

    @twitter_results = rClient.search("trump", :lang => "en").take(20)

    # rClient.search("to:justinbieber marry me", result_type: "recent").take(3).collect do |tweet|
    #   "#{tweet.user.screen_name}: #{tweet.text}"
    # end

    # sClient = Twitter::Streaming::Client.new do |config|
    #   config.consumer_key        = "ROnTd2dKR30LXDDn3xCutey7v"
    #   config.consumer_secret     = "rQUJPsSaEmEJufyM3asB8KcdUzro9y2JYLBjYj40AvoRYllDcd"
    #   config.access_token        = "130191882-whhRyj8rTFmAmFW87L3vLnjNGAhPv7vvxq43ewvn"
    #   config.access_token_secret = "08dr8LRBr9kmdcfUqOudbQx85QBbMUOg4eNno2Y4gFB3i"
    # end
    #
    # sClient.sample do |object|
    #   puts object.text if object.is_a?(Twitter::Tweet)
    # end
    #
    # topics = ["coffee", "tea"]
    # @twitter_results = sClient.filter(track: topics.join(",")) do |object|
    #   puts object.text if object.is_a?(Twitter::Tweet)
    # end
  end

  def show
  end

  def new
  end

  def update
  end

  def destroy
  end
end
