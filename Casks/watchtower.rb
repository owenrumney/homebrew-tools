cask "watchtower" do
  name "watchtower"
  desc "Simple hook telemetry Dashboard for Claude Code."
  homepage "https://github.com/owenrumney/watchtower"
  version "0.0.2"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_amd64.tar.gz"
      sha256 "498a7b098f1d6f7b777541c1b326684f937c3240996e36f290b57b08a603042f"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_arm64.tar.gz"
      sha256 "9a60db9d2c5c2164e5f14dc0ba002b2d7421a62b9c21ca4429a8d8b886fcc00a"
      binary "watchtower"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_amd64.tar.gz"
      sha256 "5abceb94367f51ad4b8cec616e2a48b5e68e69e45de30671f76c04e73c83cd36"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_arm64.tar.gz"
      sha256 "7774f02c4285bd94e89e2fcb37e46d315a7dcea30b0cfab38538c7767b47aee5"
      binary "watchtower"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
