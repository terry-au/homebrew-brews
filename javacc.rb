require 'formula'

class Javacc < Formula
  homepage 'http://javacc.java.net'
  url 'https://java.net/projects/javacc/downloads/download/releases/Release%206.1.2/javacc-6.1.2-distribution.zip'
  sha256 'fa7660fcc24176c566cf5d1c0f9ff4e11f25b9183449b5768101ee923b4db543'

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
