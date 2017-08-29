# clase herencia como Video
class Video
  attr_accessor :title, :duration
end

# Clase unicamente para videos de youtube, solo la hija herada
# del padre
class YouTubeVideo < Video
  attr_accessor :youtube_id
end

yt = YouTubeVideo.new

# de esta manera YouTubeVideo heredando el title de la clase
# video
yt.title = "Herencia en ruby"
yt.youtube_id = "vvvnvjnvhvj77y"


puts yt.title
puts yt.youtube_id





