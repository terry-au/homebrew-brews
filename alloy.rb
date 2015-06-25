require 'formula'

class Alloy < Formula
  homepage 'http://alloy.mit.edu/alloy/'
  url 'http://alloy.mit.edu/alloy/downloads/alloy4.jar'
  sha1 'ed4a7273aee091860132481903ae761feca18cfa'

  def script target; <<-EOS.undent
    #!/bin/sh
    
    exec java -jar #{libexec}/alloy#{version}.jar
    EOS
  end

  def install
    libexec.install "alloy#{version}.jar"

    bin.mkpath

    ['alloy'].each {|b| (bin+b).write script b} 
  end

  def test
    system "true"
  end
end
