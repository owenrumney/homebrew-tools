cask "mdview" do
  name "mdview"
  desc "Render Markdown with Mermaid etc as html with live updating."
  homepage "https://github.com/owenrumney/mdview"
  version "0.1.1"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_amd64.tar.gz"
      sha256 "cf3d2ebfde42bde01af639db42dfb33cee33c6661f12b96b15013dd512dd4887"
      binary "mdview"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_arm64.tar.gz"
      sha256 "083a1b78061aeb8dd8d1bf00cfbc955e0ba3de303f109a985149cf5cb4f56fd3"
      binary "mdview"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_amd64.tar.gz"
      sha256 "fd1e7946258c97f22b31ab9e11b4af1a8a35348ff994772555e4aea167c6b03c"
      binary "mdview"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_arm64.tar.gz"
      sha256 "ea3c7bc634ee1c7d4651c2dcac2524bad31bae93475d8bda8812e5c67bf3557f"
      binary "mdview"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
