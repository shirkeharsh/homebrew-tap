cask "mooziac" do
  version "1.2.0"
  sha256 "fce8edd4a3ba9c78f38942db1c286606732506e8b45d548d8e0abc3bf743f8f1"

  url "https://github.com/shirkeharsh/mooziac/releases/download/v#{version}/Mooziac.dmg"
  name "Mooziac"
  desc "Menu bar music player for YouTube Music and local audio"
  homepage "https://mooziac.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Mooziac.app"

  uninstall quit: "app.mooziac.mac"

  zap trash: [
    "~/Library/Application Support/Mooziac",
    "~/Library/Caches/app.mooziac.mac",
    "~/Library/HTTPStorages/app.mooziac.mac",
    "~/Library/Preferences/app.mooziac.mac.plist",
  ]
end
