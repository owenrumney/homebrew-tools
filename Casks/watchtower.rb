cask "watchtower" do
  name "watchtower"
  desc "Simple hook telemetry Dashboard for Claude Code."
  homepage "https://github.com/owenrumney/watchtower"
  version "0.0.4"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_amd64.tar.gz"
      sha256 "45f0c272069dc75518faeec79dcf8e66b59610713fe066c4ea5558f6786b0bf8"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_arm64.tar.gz"
      sha256 "c12b770b57bb6e65966c0adde9e2ced73ebd5661b941d58755b7e49ca8a1c582"
      binary "watchtower"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_amd64.tar.gz"
      sha256 "8c18cb4491c7b82f0c705b1e1c83c8b0d19b4ca4d1935e4ecedbd719d8e32ec1"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_arm64.tar.gz"
      sha256 "f9dba3f0073de875ee3db5d049c3adabae36c8e3171c9ca9fcd001a65a015f5b"
      binary "watchtower"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
