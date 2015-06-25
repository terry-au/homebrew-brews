require 'formula'

class Alloy < Formula
  homepage 'http://alloy.mit.edu/alloy/'
  url 'http://alloy.mit.edu/alloy/downloads/alloy4.2.jar'
  sha1 'a670b5f735ce7292105cdeb943fd3e511dd40f60'

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
