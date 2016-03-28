require 'formula'

class Viewber < Formula
  homepage 'http://simpleauthority.com'
  url 'http://web.archive.org/web/20150330012242/http://simpleauthority.com/viewber/ViewBer%201.1.tar.gz'
  sha1 'cbc52866c67a7a97ddc96f1029a91d10eea9c583'

  def script target; <<-EOS.undent
    #!/bin/sh
    
    exec java -cp #{libexec}/viewber-#{version}.jar #{target}
    EOS
  end

  def install
    libexec.install "target/viewber-#{version}.jar"

    bin.mkpath

    ['viewber'].each {|b| (bin+b).write script b} 
  end

  def test
    system "true"
  end
end
