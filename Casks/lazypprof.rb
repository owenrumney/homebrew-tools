cask "lazypprof" do
  name "lazypprof"
  desc "A keyboard-driven TUI for exploring Go pprof profiles."
  homepage "https://github.com/owenrumney/lazypprof"
  version "0.0.2"

  livecheck do
    skip "Auto-generated on release."
  end

  on_macos do
    on_intel do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_darwin_amd64.tar.gz"
      sha256 "db20ff8e0a29c64b14f6d8e1adf9b3e9b58065a8a0c1e875fbfb7835a97172e0"
      binary "lazypprof"
    end
    on_arm do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_darwin_arm64.tar.gz"
      sha256 "58ea868ddf620dab11293e6fef180a4ae872f578cf3767a7846b3f48d2c781ea"
      binary "lazypprof"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_linux_amd64.tar.gz"
      sha256 "21e6683946071f12fa81f819b49c838e45d1076bd540f725a4ba4d582031bea5"
      binary "lazypprof"
    end
    on_arm do
      url "https://github.com/owenrumney/lazypprof/releases/download/v#{version}/lazypprof_linux_arm64.tar.gz"
      sha256 "36773e52d516c2fc9909bff1cf2fc0493d5493f7b2b12e17dd348f985f3633b7"
      binary "lazypprof"
    end
  end

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", staged_path.to_s],
                   sudo: false
  end
end
