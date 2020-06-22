class DarshanUtil < Formula
    desc "Darshan: HPC I/O Characterization Tool"
    homepage "https://www.mcs.anl.gov/research/projects/darshan/"
    #url "https://github.com/fwang2/darshan/archive/v3-beta1.tar.gz"
    #sha256 "09d903bacd89ccc0c83061debfd9c0566cdf92dd7507728a91fc5600d94399c9"
    url "https://github.com/fwang2/darshan-releases/raw/master/darshan-3.2.1.tar.gz"
    sha256 "d63048b7a3d1c4de939875943e3e7a2468a9034fcb68585edbc87f57f622e7f7"

    def install
        Dir.chdir("darshan-util")
        system "CFLAGS=\"-std=c99\" ./configure", "--prefix=#{prefix}"
        system "make", "install"
    end
end
