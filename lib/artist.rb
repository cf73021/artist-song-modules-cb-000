require 'pry'

class Artist
  require_relative '../config/environment.rb'
    extend Memorable::ClassMethods
    extend Findable::ClassMethods
    include Paramable::InstanceMethods
    include Memorable::InstanceMethods
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize

    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
    songs.each { |song| add_song(song) }
  end

end
