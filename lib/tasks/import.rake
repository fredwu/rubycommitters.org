desc "import the list of ruby committers"
task :import => ['ar:drop', 'ar:migrate'] do
  require 'fileutils'
  FileUtils.rm_rf File.join(Padrino.root, 'public', 'images', 'portraits')
  Hero.import File.read("#{__dir__}/../../ruby-committers.yml")
end
