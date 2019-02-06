class Hba < Formula
  desc "Demo: A platform of human behavial analysis"
  homepage "https://github.com/fwang2/hba4mac"
  url "https://github.com/fwang2/hba4mac/archive/0.3.tar.gz"
  sha256 "d0f65d400ad6db4e07ce95d8a3082371342b9797519981493f3117a4eeffb4b5"

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

