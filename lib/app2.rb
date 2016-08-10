class App2
  def initialize host
    @host = host
  end

  def build_path resource_path
    "#{@host}/#{resource_path}/#{Random.new_seed}"
  end
end
