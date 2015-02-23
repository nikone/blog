require 'garnet'

$LOAD_PATH << File.join(File.dirname(__FILE__), "..", "app", "controllers")

require 'pages_controller'

module Blog
  class Application < Garnet::Application
  end
end