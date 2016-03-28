require 'formula'

class Viewber < Formula
  homepage 'http://simpleauthority.com'
  url 'http://web.archive.org/web/20150330012242/http://simpleauthority.com/viewber/ViewBer%201.1.tar.gz'
  version '1.1'
  sha1 'cbc52866c67a7a97ddc96f1029a91d10eea9c583'

  def script target; <<-EOS.undent
    #!/bin/sh
    
    exec java -cp #{libexec}/ViewBer.jar #{target}
    EOS
  end

  def install
    libexec.install "libraries/ViewBer.jar"
    libexec.install "libraries/bcprov-jdk15-139.jar"

    bin.mkpath

    ['viewber'].each {|b| (bin+b).write script b} 
  end

  def test
    system "true"
  end
end
