# otra manera de heredar es la siguiente

# como sobre escribir codigo tenemos el metodo embed_video_code
# en la clase padre video y queremos sobre escribirlo en la clase
# YouTubeVideo
class Video
  attr_accessor :titulo
  attr_accessor :duration
  attr_accessor :description

  def embed_video_code
    "<video></video"
  end
end

class FacebookVideo < Video
  attr_accessor :Facebook_id
end

class YouTubeVideo < Video
  attr_accessor :youtube_id


  def embed_video_code
    "<iframe />"
  end
end

puts YouTubeVideo.new().embed_video_code

