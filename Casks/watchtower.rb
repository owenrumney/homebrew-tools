cask "watchtower" do
  name "watchtower"
  desc "Simple hook telemetry Dashboard for Claude Code."
  homepage "https://github.com/owenrumney/watchtower"
  version "0.0.1"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_amd64.tar.gz"
      sha256 "4c4246e85a88827fea486dba11e89a2d1b5bb6f11bc3b89257ea69d653dc9a95"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_darwin_arm64.tar.gz"
      sha256 "bbc15b16b0b37c3d9a51f92d89e31efbada1cd4b7239f21901cb35f757b756c4"
      binary "watchtower"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_amd64.tar.gz"
      sha256 "89dd52e51264cc63911cdd0b023fe3989d68981bbe66fadfe179cda153e00c2a"
      binary "watchtower"
    end
    on_arm do
      url "https://github.com/owenrumney/watchtower/releases/download/v#{version}/watchtower_linux_arm64.tar.gz"
      sha256 "2570c31a4474572df92eb8e39918c182b95f808c8c14a3eccf93717301d44875"
      binary "watchtower"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
