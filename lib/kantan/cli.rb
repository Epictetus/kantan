require 'thor'

class Kantan::CLI < Thor

  include Thor::Actions

  desc 'hi', 'say hi to kantan'
  def hi
    puts 'hey, how\'s it going?'
  end

end