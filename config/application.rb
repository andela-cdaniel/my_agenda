$LOAD_PATH << File.join(__dir__, "..", "app", "controllers")

module MyAgenda
  class Application < Bijou::Application
  end
end
