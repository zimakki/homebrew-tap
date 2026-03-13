cask "inkwell" do
  version "0.2.10"

  on_arm do
    sha256 "e5b8d01ba755d5b72de2bd1286c19364d332c73e9e6241e27647eae12db93189"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_arm64.dmg"
  end

  on_intel do
    sha256 "9db708bebb6a5a8d7c15ecd6def0838936f03a75b4b28168cedc4369e12e104a"
    url "https://github.com/zimakki/inkwell/releases/download/v#{version}/Inkwell_darwin_amd64.dmg"
  end

  name "Inkwell"
  desc "Live markdown preview desktop app"
  homepage "https://github.com/zimakki/inkwell"

  depends_on macos: ">= :catalina"
  depends_on formula: "zimakki/tap/inkwell-cli"

  app "Inkwell.app"
end
