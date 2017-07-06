class Swiro < Formula
  swiro_version = '0.2.2'
  homepage 'https://github.com/taku-k/swiro'
  version swiro_version

  if Hardware::CPU.is_64_bit?
    url "https://github.com/taku-k/swiro/releases/download/v#{swiro_version}/swiro_darwin_amd64"
    sha256 'f6bcba7c577cb425554bd28a6ffd3dbcefdfe73bdbf823a5ef3fa0856d11294c'
  else
    url "https://github.com/taku-k/swiro/releases/download/v#{swiro_version}/swiro_darwin_386"
    sha256 '09e209ee173e6dea83e96da228dd71086a50faf813a94ef0a6b64bb146aa1043'
  end

  def install
    bin.install Dir['swiro']
  end

  test do
    system 'swiro', '--version'
  end
end
