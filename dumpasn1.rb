require 'formula'

class Dumpasn1 < Formula
  homepage 'http://www.cs.auckland.ac.nz/~pgut001/dumpasn1.c'
  url 'https://www.cs.auckland.ac.nz/~pgut001/dumpasn1.c'
  version '20170404'
  sha256 'f2c0b07c1540c1013df49261c0b707a1452ddd0711d195efb4ce26e3f86e2181'

  resource "cfg_file" do
    url "https://www.cs.auckland.ac.nz/~pgut001/dumpasn1.cfg"
    sha256 "9774ecae122c2e4e68d97489c46871081e04e746c85135288c4a77d04a0544f7"
  end

  def install

    resources.each do |r|
      r.stage etc
    end

    system "cc -o dumpasn1 dumpasn1.c"
    bin.install 'dumpasn1'
    #etc.install 'dumpasn1.cfg'
  end

  def test
    system "true"
  end
end
