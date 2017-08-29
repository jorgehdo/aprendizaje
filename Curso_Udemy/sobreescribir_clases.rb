
# Como sobre escribir reutilizando el codigo de la clase padre
# atravez del metodo setup, atravez del metodo "super" se le paso
# a setup toda la informacion para que la pasara al metodo "title"
class Video
  attr_accessor :title
  attr_accessor :duration
  attr_accessor :description

  def title
    @title
  end

  def embed_video_code
    "<video></video"
  end

  def setup(title)
    @title = title
  end
end

class YouTubeVideo < Video
  attr_accessor :youtube_id


  def embed_video_code
    "<iframe />"
  end

  def setup(title)
    super
  end
end

yt = YouTubeVideo.new
puts yt.title
yt.setup("Herencia Ruby")
puts yt.title

