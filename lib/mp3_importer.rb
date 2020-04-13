#The MP3Importer class will parse all the filenames in the spec/fixtures folder and send the filenames to the Song class
class MP3Importer

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect do |file|
    file.gsub("#{path}/", "")
    end
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
    end
    end

end
