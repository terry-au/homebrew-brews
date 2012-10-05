require 'formula'

class Dumpasn1 < Formula
  homepage 'http://www.cs.auckland.ac.nz/~pgut001/dumpasn1.c'
  url 'http://ftp.de.debian.org/debian/pool/main/d/dumpasn1/dumpasn1_20120521.orig.tar.gz'
  version '20120521'
  sha1 '925dd68d3d90c3ebdbbd7717dc5f38da9ca48860'

  def install
    system "cc -o dumpasn1 dumpasn1.c"
    bin.install 'dumpasn1'
    etc.install 'dumpasn1.cfg'
  end

  def test
    system "true"
  end
end
