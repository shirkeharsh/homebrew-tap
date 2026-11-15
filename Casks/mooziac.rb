cask "mooziac" do
  version "1.2.2"
  sha256 "a9a170e10a1ab27aa22a6bd85e516f0af0de90d092538a08ee145f9cc9295a50"

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
