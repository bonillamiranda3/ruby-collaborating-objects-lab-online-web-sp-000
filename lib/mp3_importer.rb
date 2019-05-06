class MP3Importer
  attr_accessor :path

  def initialize(file_path)
    @path = file_path
  end

  def files 
    @files = Dir["./spec/fixtures/mp3s/*"].map { |file| file.split("/").last }
  end

  def import
      self.files.each do |file|
        Song.new_by_filename(file)
      end
  end
end