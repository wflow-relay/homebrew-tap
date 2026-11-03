cask "relay" do
  version "0.1.0"
  sha256 "460650bf0df1ab445fdf57ce185546ebeabecbaf0784b94cc70bf1f8cc7bc43e"

  url "https://github.com/wflow-relay/homebrew-tap/releases/download/relay-v#{version}/Relay-#{version}.dmg"
  name "Relay"
  desc "Takes a card from start to finish with coding agents (app and wflow CLI)"
  homepage "https://github.com/wflow-relay/homebrew-tap"

  depends_on macos: ">= :tahoe"

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Helpers/wflow"

  zap trash: "~/Library/Preferences/dev.franwer.Relay.plist"
end
