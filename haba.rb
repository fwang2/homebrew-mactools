class Haba < Formula
  desc "something about haba"
  homepage "https://github.com/fwang2/haba4mac"
  url="https://github.com/fwang2/haba4mac/archive/0.1.tar.gz"
  def install
    bin.install "src/cli" => "habacli"
  end
end

