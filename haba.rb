class Haba < Formula
  desc "something about haba"
  homepage "https://github.com/fwang2/haba4mac"
  url "https://github.com/fwang2/haba4mac/archive/0.1.tar.gz"
  sha256 "49116092c27b734fac3a756888dab40162301d8950de3952a4ba81033df43fbb"
  
  depends_on "opencv" => "4.0.0"

  def install
    bin.install "src/cli" => "cli"
    prefix.install "models" 
  end

   def haba_home
    HOMEBREW_PREFIX/"haba"
   end

   def caveats; <<~EOS

      #{haba_home}

  EOS
  end

end

