class Hba < Formula
  desc "Demo: A platform of human behavial analysis"
  homepage "https://github.com/fwang2/hba4mac"
  url "https://github.com/fwang2/haba4mac/archive/0.3.tar.gz"
  sha256 "66c15c9e573cf923967a4fd09b749e3fef332e37bc2b70aafbfa2776f3091578"

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

