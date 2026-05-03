cask "mdview" do
  name "mdview"
  desc "Render Markdown with Mermaid etc as html with live updating."
  homepage "https://github.com/owenrumney/mdview"
  version "0.0.0"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_amd64.tar.gz"
      sha256 "466c4df55c2562e512f48a4e30cb339f0c2e7643d19fa45c36c499dcde292046"
      binary "lazypprof"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_darwin_arm64.tar.gz"
      sha256 "f4087cd6c76bcef04c54dfea5bb761bc773a010ecb50df428f0046e8d7f7ced2"
      binary "lazypprof"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/mdview_linux_amd64.tar.gz"
      sha256 "0979a121f3348a4d975078d653d8f73c05fa8f26c9e444c2e2965cf246022ffa"
      binary "lazypprof"
    end
    on_arm do
      url "https://github.com/owenrumney/mdview/releases/download/v#{version}/lmdview_linux_arm64.tar.gz"
      sha256 "3daa52bb9c1e2eff6a82b831f7d9d5462a5c47a068a90b4b70a03c6dbf1542b3"
      binary "lazypprof"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
