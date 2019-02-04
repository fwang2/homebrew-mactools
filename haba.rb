class Haba < Formula
  desc "something about haba"
  homepage "https://github.com/fwang2/haba4mac"
  url "https://github.com/fwang2/haba4mac/archive/0.2.tar.gz"
  
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

