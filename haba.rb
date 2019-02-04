class Haba < Formula
  desc "something about haba"
  homepage "https://github.com/fwang2/haba4mac"
  url "https://github.com/fwang2/haba4mac/archive/0.2.tar.gz"
  sha256 "48f7eae8c9cd4cbb96b7e548b9c4278c4b568a386e73febaa18ad595ca822ebf"

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

