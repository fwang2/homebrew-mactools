class DarshanUtil < Formula
    desc "Darshan: HPC I/O Characterization Tool"
    homepage "https://www.mcs.anl.gov/research/projects/darshan/"
    url "https://github.com/fwang2/darshan/archive/v3-beta1.tar.gz"
    sha256 "09d903bacd89ccc0c83061debfd9c0566cdf92dd7507728a91fc5600d94399c9"

    def install
        Dir.chdir("darshan-util")
        system "./configure", "--prefix=#{prefix}"
        system "make", "install"
    end
end
