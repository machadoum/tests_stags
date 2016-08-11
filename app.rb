require_relative 'lib/path_builder'
require_relative 'lib/random_path_builder'
require_relative 'lib/file_mover'

file = "myfile.txt"
mover = FileMover.new
mover.move file
