cask "spotclean" do
  name "spotclean"
  desc "Clean up all those annoying Spotify playlists."
  homepage "https://github.com/owenrumney/spotclean"
  version "0.1.0"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_darwin_amd64.tar.gz"
      sha256 "fb5d1db27c5329d1e7ae2a9b953ea97284033a66b08cb7c7f9360fa3d9ced561"
      binary "spotclean"
    end
    on_arm do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_darwin_arm64.tar.gz"
      sha256 "a9442a998de722eb704d194737d7888b61edc7618275f0761cf4b6db75700b7d"
      binary "spotclean"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_linux_amd64.tar.gz"
      sha256 "8e9c3f7de4f5a79da6fe53c115aab2f3eb8c1e499076d419e06fc62bdf0cb112"
      binary "spotclean"
    end
    on_arm do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_linux_arm64.tar.gz"
      sha256 "0255f165b0f1329f113fd8b07e5f6cc982eacf19fdd810ec5df8ccb6d04a1638"
      binary "spotclean"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
