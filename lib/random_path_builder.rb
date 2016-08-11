class RandomPathBuilder
  def initialize host
    @host = host
  end

  def build_path resource_path
    "#{@host}/#{Random.new_seed}#{resource_path}"
  end
end
