class App1
  def initialize host
    @host = host
  end

  def build_path resource_path
    "#{@host}/#{resource_path}"
  end
end
