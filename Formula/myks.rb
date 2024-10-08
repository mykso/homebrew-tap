# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "Configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "4.2.3"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional

  on_macos do
    on_intel do
      url "https://github.com/mykso/myks/releases/download/v4.2.3/myks_4.2.3_darwin_amd64.tar.gz"
      sha256 "0ba93c691da6fbac4c9f2d57e5f169be59be9cbc495b05027499a41aa97a2265"

      def install
        bin.install "myks"
      end
    end
    on_arm do
      url "https://github.com/mykso/myks/releases/download/v4.2.3/myks_4.2.3_darwin_arm64.tar.gz"
      sha256 "50b2c867de1546480dbd2ac9dc987b12248f0a804cce8b7feb37ade57368d3dd"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.2.3/myks_4.2.3_linux_amd64.tar.gz"
        sha256 "c4a10351592596d9cb7ac080879efa59bd55d23629739e8316b1d20873ff9674"

        def install
          bin.install "myks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.2.3/myks_4.2.3_linux_arm64.tar.gz"
        sha256 "145fbb580ead73886d5941cf37041fbc796987715f6bbe76f4b6789b738e70bc"

        def install
          bin.install "myks"
        end
      end
    end
  end
end
