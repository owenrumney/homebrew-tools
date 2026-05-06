cask "watchtower" do
  name "watchtower"
  desc "Simple hook telemetry Dashboard for Claude Code."
  homepage "https://github.com/owenrumney/watchtower"
  version "0.1.4"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_amd64.tar.gz"
      sha256 "064547002e939aa6dfc5bcaf4c7c69ad25abdadf03b2f87424c451743d4dc70a"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_arm64.tar.gz"
      sha256 "34a1d19a58b261f900f1f2c9488af308b1ef45d1b33d64284baefec2383ddbf2"
      binary "mdview"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_amd64.tar.gz"
      sha256 "4187f81bb2bf1f9aea6b4c55c9ea989c5058d2350c6c8678797f57d9648384d1"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_arm64.tar.gz"
      sha256 "f000f0eb9d001cd2703395356788e4b42a254e8a25338ff86ff2bcd8586d60ee"
      binary "watchtower"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
