cask "spotclean" do
  name "spotclean"
  desc "Clean up all those annoying Spotify playlists."
  homepage "https://github.com/owenrumney/spotclean"
  version "0.0.1"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_darwin_amd64.tar.gz"
      sha256 "5bb1919af94c0601c051151f75ff7897be51e0ad96d700bbc9edef4b93029d96"
      binary "spotclean"
    end
    on_arm do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_darwin_arm64.tar.gz"
      sha256 "29c2c1eb12f379d002b8b42d4c0cba35d402a39289e3baf40fa47e089aec1301"
      binary "spotclean"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_linux_amd64.tar.gz"
      sha256 "086e96fb963c6cf20d4378f42b8401af88be356d433d222f62107073dfd5d6b0"
      binary "spotclean"
    end
    on_arm do
      url "https://github.com/owenrumney/spotclean/releases/download/v#{version}/spotclean_linux_arm64.tar.gz"
      sha256 "ae77412321350c0f1a821528cd0ad5d7a0b97203f42a0ce48dd000ac2870cea0"
      binary "spotclean"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
