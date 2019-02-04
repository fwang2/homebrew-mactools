class Haba < Formula
  desc "something about haba"
  homepage "https://github.com/fwang2/haba4mac"
  url "https://github.com/fwang2/haba4mac/archive/0.2.tar.gz"
  
  depends_on "opencv" => "4.0.0"

   def haba_envs
    <<~EOS
      export HABA_HOME="#{prefix}"
    EOS
   end


  def install
    bin.install "src/cli" => "cli"
    prefix.install "models" 
    envs.write(haba_envs) unless envs.exist?
  end
end

