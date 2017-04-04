require 'formula'

class Dumpasn1 < Formula
  homepage 'http://www.cs.auckland.ac.nz/~pgut001/dumpasn1.c'
  url 'http://ftp.de.debian.org/debian/pool/main/d/dumpasn1/dumpasn1_20150808.orig.tar.gz'
  version '20150808'
  sha256 '6119a9e218c6d7744419fda413c8ea850c272a83c1d1716a5cc6b87a63215594'

  def install
    system "cc -o dumpasn1 dumpasn1.c"
    bin.install 'dumpasn1'
    etc.install 'dumpasn1.cfg'
  end

  def test
    system "true"
  end
end
