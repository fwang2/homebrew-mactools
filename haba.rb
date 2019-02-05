class Haba < Formula
  desc "something about haba"
  homepage "https://github.com/fwang2/haba4mac"
  url "https://github.com/fwang2/haba4mac/archive/0.3.tar.gz"
  sha256 "b66460f0a04d5ecf9e4e79edd951fcb9568358213da95e351d38b755604cb3c7"

  depends_on "opencv" => "4.0.0"

   def haba_envs
    <<~EOS
      export HABA_HOME="#{prefix}"
    EOS
   end


  def install
    bin.install "src/cli" => "cli"
    prefix.install "models" 
  end

  def caveats; <<~EOS

    Please set up the following environment variable:

        export HABA_HOME="#{prefix}"

  EOS
  end

end

