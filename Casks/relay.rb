cask "relay" do
  version "0.4.0"
  sha256 "a0344e95b1487197ab135f4d194347b0bcf47faae95433022a504dfdb377e83b"

  url "https://github.com/wflow-relay/homebrew-tap/releases/download/relay-v#{version}/Relay-#{version}.dmg"
  name "Relay"
  desc "Takes a card from start to finish with coding agents (app and wflow CLI)"
  homepage "https://github.com/wflow-relay/homebrew-tap"

  depends_on macos: ">= :tahoe"

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Helpers/wflow"

  zap trash: "~/Library/Preferences/dev.franwer.Relay.plist"
end
