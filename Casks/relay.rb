cask "relay" do
  version "0.4.1"
  sha256 "f4a3ebe4697c9d32ba1113fe60f12872aa3cf9b73f169d7235bc91c95f28c867"

  url "https://github.com/wflow-relay/homebrew-tap/releases/download/relay-v#{version}/Relay-#{version}.dmg"
  name "Relay"
  desc "Takes a card from start to finish with coding agents (app and wflow CLI)"
  homepage "https://github.com/wflow-relay/homebrew-tap"

  depends_on macos: ">= :tahoe"

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Helpers/wflow"

  zap trash: "~/Library/Preferences/dev.franwer.Relay.plist"
end
