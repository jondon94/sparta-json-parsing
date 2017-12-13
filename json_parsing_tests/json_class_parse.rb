require 'json'

class ParseJson

  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file['base']
  end

end
