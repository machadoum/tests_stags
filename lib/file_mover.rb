require 'fileutils'

##
# It is responsible for moving a file using two path_builders
#
class FileMover
  def move file
    home = "."
    origin_path = PathBuilder.new(home).build_path file
    dest_path = RandomPathBuilder.new(home).build_path file

    unless File.exists?(dest_path)
      FileUtils.mv(origin_path, dest_path)
    end
  end
end
