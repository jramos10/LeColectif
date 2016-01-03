require 'spec_helper'

describe Scrobbler do
  describe 'should parse the last.fm scrobble' do
    let(:response) { SampleTweetResponses.tweet_response }

    it 'should parse tweet music attributes from scrobble response' do
      attributes = {  source: "twitter",
                      text: "Thee Namaste Nerdz. ##{ENV["HASHTAG"]}",
                      screen_name: "bullcityrecords",
                      time_of_post: "Fri Sep 21 23:40:54 +0000 2012",
                      profile_image_url: "http://a0.twimg.com/profile_images/447958234/Lichtenstein_normal.jpg",
                      media_url: "https://pbs.twimg.com/media/BoqqU1wIMAAr_zO.jpg",
                      post_id: "249292149810667520" }

      result = TweetParser.parse(response)

      expect(result).to include(attributes)
    end
  end
end
