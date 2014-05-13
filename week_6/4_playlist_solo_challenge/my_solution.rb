# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself].


# Pseudocode

# create a class Song
# initialize class song with 2 arguments, song_name and artist and instance variable @played to false
# create a class Playlist
# initialize class Playlist with multiple arguments of song
# make sure both class structures are able to access all attributes
# create method add for class playlists that pushes each argument into @songs
# create method num_of_tracks that returns the length of @songs
# create method play that turns @played equal to true
# create method remove that deletes the argument from @songs and also runs num_of_track
# create method includes? that does the same thing as include?
# create method play_all that runs play for all class instances in @songs
# create method display that returns @songs

# Initial Solution

class Song
	attr_accessor :song_name, :artist
	def initialize(song_name, artist)
		@song_name = song_name
		@artist = artist
		@played = false
	end

	def play
		@played = true
	end
end

class Playlist
	attr_accessor :songs
	def initialize(*songs)
		@songs = songs
	end

	def add(*more)
		more.map { |x| @songs << x }
	end

	def num_of_tracks
		@num_of_tracks = @songs.length
	end

	def remove(delete)
		@songs.delete(delete)
		num_of_tracks
	end

	def includes?(included)
		@songs.include?(included)
	end

	def play_all
		@songs.each { |x| x.play }
	end

	def display
		@songs
	end
end

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection 

# This was the most difficult challenge for me for this week.  I was confused as to how to make
# a class structure with an array (line 81).  I remember doing "*coords" for Boggle_board but
# I didn't know if that worked for initializing methods.  I had to play around in my terminal
# a lot to see if it was actually doing the right thing.  Other than that, after I realized that
# the * worked, the rest of it went pretty smoothly.