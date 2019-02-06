class Hba < Formula
  desc "Demo: A platform of human behavial analysis"
  homepage "https://github.com/fwang2/hba4mac"
  url "https://github.com/fwang2/hba4mac/archive/0.4.tar.gz"
  sha256 "0633c933499e38ec8a515b724dfa9530e8b9726d2979a8750e5426c1bc1914f9"

  depends_on "opencv" => "4.0.0"

   def hba_envs
    <<~EOS
      export HBA_HOME="#{prefix}"
    EOS
   end


  def install
    bin.install "src/cli" => "cli"
    prefix.install "models" 
  end

  def caveats; <<~EOS

    Please set up the following environment variable:

        export HBA_HOME="#{prefix}"

  EOS
  end

end

