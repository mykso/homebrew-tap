# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "Configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "4.2.5"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional

  on_macos do
    on_intel do
      url "https://github.com/mykso/myks/releases/download/v4.2.5/myks_4.2.5_darwin_amd64.tar.gz"
      sha256 "bc7ce3de413e1adab0d8e7b9ff4e5bfdd164b5046ba4f133d8880862812bfa7c"

      def install
        bin.install "myks"
      end
    end
    on_arm do
      url "https://github.com/mykso/myks/releases/download/v4.2.5/myks_4.2.5_darwin_arm64.tar.gz"
      sha256 "bfe56d2b63336753f0f9ee6f8fce63e895a930c6f0ff88981b8a4b9f885e00b8"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.2.5/myks_4.2.5_linux_amd64.tar.gz"
        sha256 "545d655748ef603afa5bcef8570307650aa61dfbc2b0b57027e4eaba1a02aee4"

        def install
          bin.install "myks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.2.5/myks_4.2.5_linux_arm64.tar.gz"
        sha256 "c4e2dd45f7054480d54c70b770253cf35cbe67a518f257b9fb289dcb734c0289"

        def install
          bin.install "myks"
        end
      end
    end
  end
end
