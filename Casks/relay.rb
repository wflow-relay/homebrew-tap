cask "relay" do
  version "0.2.0"
  sha256 "25e51b09d3a847b767aa4e5cfea6b75ae3edd27a2ede2e32ffd01faf02f799c4"

  url "https://github.com/wflow-relay/homebrew-tap/releases/download/relay-v#{version}/Relay-#{version}.dmg"
  name "Relay"
  desc "Takes a card from start to finish with coding agents (app and wflow CLI)"
  homepage "https://github.com/wflow-relay/homebrew-tap"

  depends_on macos: ">= :tahoe"

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Helpers/wflow"

  zap trash: "~/Library/Preferences/dev.franwer.Relay.plist"
end
