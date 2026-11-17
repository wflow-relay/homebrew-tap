cask "relay" do
  version "0.6.1"
  sha256 "870b39e7318cc1e6eded43768a9ed1f3bc54d3ae4ef8c6c38d6c7dd02311cdbc"

  url "https://github.com/wflow-relay/homebrew-tap/releases/download/relay-v#{version}/Relay-#{version}.dmg"
  name "Relay"
  desc "Takes a card from start to finish with coding agents (app and wflow CLI)"
  homepage "https://github.com/wflow-relay/homebrew-tap"

  depends_on macos: ">= :tahoe"
  # Relay updates itself (Sparkle): brew upgrade leaves it alone, brew upgrade --greedy brings it up to date.
  auto_updates true

  app "Relay.app"
  binary "#{appdir}/Relay.app/Contents/Helpers/wflow"

  # brew uninstall --zap (RL-113): wflow off this Mac first, with the wflow inside the app (still there: zap's script
  # runs before the app goes), keeping the runs; then Relay's preferences. Plain brew uninstall only takes the app and
  # the link. A Relay already gone, or wflow refusing (open runs), does not stop the zap: wflow says why.
  zap script: {
        executable:   "/bin/sh",
        args:         ["-c", '[ ! -x "$0" ] || "$0" uninstall --yes --keep-store',
                       "#{appdir}/Relay.app/Contents/Helpers/wflow"],
        must_succeed: false,
      },
      trash:  "~/Library/Preferences/dev.franwer.Relay.plist"
end
