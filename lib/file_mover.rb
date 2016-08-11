require 'fileutils'

##
# It is responsible for moving a file using two path_builders
#
class FileMover
  def initialize origin, destination
    @origin = origin
    @destination = destination
  end

  def move file
    origin_path = @origin.build_path file
    dest_path = @destination.build_path file

    unless File.exists?(dest_path)
      FileUtils.mv(origin_path, dest_path)
    end
  end
end
