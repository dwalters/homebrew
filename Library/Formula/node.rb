require 'formula'

class Node <Formula
  url 'http://s3.amazonaws.com/four.livejournal/20091117/node-v0.1.18.tar.gz'
  homepage 'http://nodejs.org/'
  md5 '07e8b44ce5665382e60214d282275322'

  def skip_clean? path
    # TODO: at some point someone should tweak this so it only skips clean
    # for the bits that break the build otherwise
    true
  end

  def install
    ENV.gcc_4_2
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
