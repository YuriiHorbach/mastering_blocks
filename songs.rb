class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end

  def each_filename
      str = "#{name.downcase}-#{artist.downcase}".gsub(' ', '-')
      arr = ['.mp3','.wav', '.aac']
      arr.each { |item| yield str + item }
  end
end

class Playlist

  include Enumerable

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each
    @songs.each do |song|
      yield song
    end
  end

  def play_songs
    each{|song| song.play}
  end

  def each_tagline
    tagline = @songs.map {|item| "#{item.name} - #{item.artist}"}
    yield tagline
  end

  def each_by_artist artist
    arr = select{ |song| song.artist == artist}     
    arr.each { |item| yield item }
  end

  


end

song1 = Song.new('Antoshka', 'Antoshka', 3)
song2 = Song.new('Human', 'Ran&Bone man', 4)
song3 = Song.new('Plakala', 'Kazka', 2)


playlist1 = Playlist.new("My playlist")

playlist1.add_song(song1)
playlist1.add_song(song2)
playlist1.add_song(song3)

# playlist1.each {|song| song.play}``

selected_song = playlist1.select { |i| i.name == 'Plakala' }
p selected_song

okie_songs = playlist1.select { |song| song.name =~ /akal/ }
p okie_songs

sum_duration = playlist1.reduce(0) {|sum, song| sum += song.duration}

p sum_duration

songs_titles = playlist1.map {|song| "#{song.name}"}

puts songs_titles

puts "-"*10

playlist1.each_tagline { |tagline| puts tagline }

puts "-"*10

playlist1.each_by_artist("Antoshka") { |song| song.play }

puts "-"*10

song1.each_filename { |filename| puts filename }

puts "-"*10

playlist1.each{ |song| song.each_filename{ |filename| puts filename } }


# playlist1.each_with_index do |item, index|
#   p item[index]
# end