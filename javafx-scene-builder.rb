require 'formula'

class JavaFXSceneBuilder < Formula
  homepage 'http://gluonhq.com/open-source/scene-builder/'
  url 'http://download.gluonhq.com/scenebuilder/8.1.1/SceneBuilder-8.1.1.jar'
  sha1 '40abbd9f46cb538fe645ea9d62fa210893676a62'

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
