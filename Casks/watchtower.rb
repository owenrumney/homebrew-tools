cask "watchtower" do
  name "watchtower"
  desc "Simple hook telemetry Dashboard for Claude Code."
  homepage "https://github.com/owenrumney/watchtower"
  version "0.0.3"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_amd64.tar.gz"
      sha256 "db42b205c2c44d2d9daeeb1507dc864b9394159c37b3613cebeb86dfdde26938"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_arm64.tar.gz"
      sha256 "050786dea814513b6898023a87bb84c36e6e042ea31c4c88a68c37bf755d1fae"
      binary "watchtower"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_amd64.tar.gz"
      sha256 "af5c01ff22140b4be3f8b8d57694eb60cdaf0a75dc573ac8f2e9d3614d8b4f7b"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_arm64.tar.gz"
      sha256 "63406b322aa622300c177a9e59f0287a25ce96dad71e16717144d487679464d7"
      binary "watchtower"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
