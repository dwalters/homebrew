require 'formula'

class AircrackNg <Formula
  url 'http://download.aircrack-ng.org/aircrack-ng-1.0.tar.gz'
  homepage 'http://www.aircrack-ng.org/'
  md5 'dafbfaf944ca9d523fde4bae86f0c067'

  def install
    ENV.m32
    system "make install prefix=#{prefix}"
  end
end
