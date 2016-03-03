# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Scenebuilder < Formula
  desc ""
  homepage "http://gluonhq.com/open-source/scene-builder/"
  url "http://download.gluonhq.com/scenebuilder/8.1.1/SceneBuilder-8.1.1.jar"
  version "8.1.1"
  sha256 "189c2ecd20e9258a797c7e604d2ec735ca92f48036a7a5d363cad2ea20702064"

  def script target; <<-EOS.undent
    #!/bin/sh
    
    exec java -jar #{libexec}/SceneBuilder-#{version}.jar
    EOS
  end

  def install
    libexec.install "SceneBuilder-#{version}.jar"

    bin.mkpath

    ['SceneBuilder'].each {|b| (bin+b).write script b} 
  end

  def test
    system "true"
  end
end
