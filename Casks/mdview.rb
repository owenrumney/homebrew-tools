cask "mdview" do
  name "mdview"
  desc "Render Markdown with Mermaid etc as html with live updating."
  homepage "https://github.com/owenrumney/mdview"
  version "0.1.7"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_amd64.tar.gz"
      sha256 "407f08c4200c7149350e80e11f2fa9382d1f2d7980a281f221236de189563fcd"
      binary "mdview"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_arm64.tar.gz"
      sha256 "4a4b461a31ba61a45401c9af23006669945fd83cc0591c48853b11659c53eb15"
      binary "mdview"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_amd64.tar.gz"
      sha256 "c56b7f1a5983c2ee7ac4e2aa8dbbd12a8326d740bee2fa847ee485db3909301a"
      binary "mdview"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_arm64.tar.gz"
      sha256 "0f39e14d9d8f25ccb7370836f95bc0b2810b0bd3472cd6ec13667103c4c5593f"
      binary "mdview"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
