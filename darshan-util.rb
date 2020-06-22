class DarshanUtil < Formula
    desc "Darshan: HPC I/O Characterization Tool"
    homepage "https://www.mcs.anl.gov/research/projects/darshan/"
    #url "https://github.com/fwang2/darshan/archive/v3-beta1.tar.gz"
    #sha256 "09d903bacd89ccc0c83061debfd9c0566cdf92dd7507728a91fc5600d94399c9"
    url "https://github.com/fwang2/darshan-releases/raw/master/darshan-3.2.1p1.tar.gz"
    sha256 "43df45716b9a980412d30b9c862311ad1e0bb2f2a106bf55749cd0fdaa4292ec"
    #depends_on "gcc@9"

    def install
        #ENV['CC'] = "gcc-9"
        ENV['CFLAGS'] = "-std=c99 -I.."
        Dir.chdir("darshan-util")
        system "./configure", "--prefix=#{prefix}"
        system "make", "install"
    end
end
