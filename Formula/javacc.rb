require 'formula'

class Javacc < Formula
  homepage 'http://javacc.java.net'
  url 'https://java.net/projects/javacc/downloads/download/releases/Release%206.1.2/javacc-6.1.2-distribution.zip'
  sha1 '1e63a1b186c405f9172b32b0314ebb0e0ef8c780'

  def script target; <<-EOS.undent
    #!/bin/sh
    
    exec java -cp #{libexec}/javacc-#{version}.jar #{target}
    EOS
  end

  def install
    libexec.install "target/javacc-#{version}.jar"

    bin.mkpath

    ['javacc', 'jjtree', 'jjdoc'].each {|b| (bin+b).write script b} 
  end

  def test
    system "true"
  end
end
