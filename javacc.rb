require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Javacc < Formula
  homepage 'http://javacc.java.net'
  url 'http://java.net/projects/javacc/downloads/download/javacc-5.0.tar.gz'
  sha1 'ac9f7833bdd427d05c8364406ff82ee7cab4f86f'

  def install
    # adjust path in javacc script
    inreplace 'bin/javacc' do |s|
      s.gsub! "`dirname $0`/lib", "#{HOMEBREW_PREFIX}/share/java"
    end

    bin.install "bin/javacc"
    (share+'java').install "bin/lib/javacc.jar"

    # adjust path in jjdoc script
    inreplace 'bin/jjdoc' do |s|
      s.gsub! "`dirname $0`/lib", "#{HOMEBREW_PREFIX}/share/java"
    end

    bin.install "bin/jjdoc"
    # (share+'java').install "bin/lib/javacc.jar"

    # adjust path in jjdoc script
    inreplace 'bin/jjtree' do |s|
      s.gsub! "`dirname $0`/lib", "#{HOMEBREW_PREFIX}/share/java"
    end

    bin.install "bin/jjtree"
    # (share+'java').install "bin/lib/javacc.jar"
  end

  def test
    system "true"
  end
end
