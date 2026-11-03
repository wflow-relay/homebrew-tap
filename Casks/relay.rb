cask "relay" do
  version "0.3.0"
  sha256 "0b24f3fc71f27356ba18366727d1575eb3820e954cca186462ca6d18cee64c9c"

  url "https://github.com/wflow-relay/homebrew-tap/releases/download/relay-v#{version}/Relay-#{version}.dmg"
  name "Relay"
  desc "Takes a card from start to finish with coding agents (app and wflow CLI)"
  homepage "https://github.com/wflow-relay/homebrew-tap"

  depends_on macos: ">= :tahoe"

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Helpers/wflow"

  zap trash: "~/Library/Preferences/dev.franwer.Relay.plist"
end
