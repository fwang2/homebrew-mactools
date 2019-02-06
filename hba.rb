class Hba < Formula
  desc "Demo: A platform of human behavial analysis"
  homepage "https://github.com/fwang2/hba4mac"
  url "https://github.com/fwang2/hba4mac/archive/0.3.tar.gz"
  sha256 "a2c2a7bc710944b5ae8515e96d2c4686df02402798ff56967a65458a8e084901"

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

