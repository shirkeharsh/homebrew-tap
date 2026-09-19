cask "mooziac" do
  version "1.1.6"
  sha256 "31aa4ef668a378a65f5c72fed50e955666b976d4378a3844ed70839cc32d81b5"

  url "https://github.com/shirkeharsh/mooziac/releases/download/v#{version}/Mooziac.dmg"
  name "Mooziac"
  desc "Menu bar music player for YouTube Music and local audio"
  homepage "https://mooziac.threeten.site"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Mooziac.app"

  uninstall quit: "app.mooziac.mac"

  zap trash: [
    "~/Library/Application Support/Mooziac",
    "~/Library/Caches/app.mooziac.mac",
    "~/Library/HTTPStorages/app.mooziac.mac",
    "~/Library/Preferences/app.mooziac.mac.plist",
  ]
end
