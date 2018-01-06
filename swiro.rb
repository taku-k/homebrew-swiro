class Swiro < Formula
  swiro_version = '0.2.4'
  homepage 'https://github.com/taku-k/swiro'
  version swiro_version

  if Hardware::CPU.is_64_bit?
    url "https://github.com/taku-k/swiro/releases/download/v#{swiro_version}/swiro_darwin_amd64"
    sha256 '2c9f3bd00b402412f3e1209205e2a97d3a9ade2f80e5c7168cabb4463aa90db4'
  else
    url "https://github.com/taku-k/swiro/releases/download/v#{swiro_version}/swiro_darwin_386"
    sha256 'cff14bacfbad7383a79e6248d1ab187560deffb0a14b9a4ac408ca2aba884424'
  end

  def install
    if Hardware::CPU.is_64_bit?
      mv 'swiro_darwin_amd64', 'swiro'
    else
      mv 'swiro_darwin_386', 'swiro'
    end
    bin.install 'swiro'
  end

  test do
    system 'swiro', '--version'
  end
end
