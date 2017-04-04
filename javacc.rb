require 'formula'

class Javacc < Formula
  homepage 'http://javacc.java.net'
  url 'https://github.com/javacc/javacc/archive/release_7_0_2.zip'
  sha256 'ca4b7f4609cc35a1f91e199f23f1a4a84be64c9208dbc986d9a2be4308f4a354'
  depends_on "ant" => :build

  def script target; <<-EOS.undent
    #!/bin/sh
    
    exec java -cp #{libexec}/javacc-#{version}.jar #{target}
    EOS
  end

  def install
    system "ant"

    libexec.install "target/javacc-7.0.2.jar"

    bin.mkpath

    ['javacc', 'jjtree', 'jjdoc'].each {|b| (bin+b).write script b}
  end

  def test
    system "true"
  end
end
