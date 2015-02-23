require 'garnet'

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

module Blog
  class Application < Garnet::Application
  end
end