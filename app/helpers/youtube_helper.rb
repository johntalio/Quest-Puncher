module YoutubeHelper
  def self.call
    HTTParty.get "https://www.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2CbrandingSettings%2CinvideoPromotion&id=UC5tfgAv1aRuWG1vKTtRGmog&key=AIzaSyDAIWzdgdn9DTCwX-vxscC3Xu9vWyGcDh0"
  end

  def self.liked
    HTTParty.get "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet%2CcontentDetails%2Cstatus&playlistId=LL5tfgAv1aRuWG1vKTtRGmog&key=AIzaSyDAIWzdgdn9DTCwX-vxscC3Xu9vWyGcDh0"
  end
end
