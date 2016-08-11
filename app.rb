require_relative 'lib/path_builder'
require_relative 'lib/random_path_builder'
require_relative 'lib/file_mover'

home = "."
file = "myfile.txt"
origin_builder = PathBuilder.new(home)
dest_builder = RandomPathBuilder.new(home)
mover = FileMover.new origin_builder, dest_builder
mover.move file
