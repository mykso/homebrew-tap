# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "A configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "2.1.0"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional
  depends_on "vendir" => :optional
  depends_on "ytt" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mykso/myks/releases/download/v2.1.0/myks_2.1.0_darwin_arm64.tar.gz"
      sha256 "ffebf3f5155c0ce60dedc722c2175c9573b316808b96a9954240dc7a4249153e"

      def install
        bin.install "myks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mykso/myks/releases/download/v2.1.0/myks_2.1.0_darwin_amd64.tar.gz"
      sha256 "4675f7875bad7c32b5a1565f23752cf007164362e88026422ff1962490607995"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mykso/myks/releases/download/v2.1.0/myks_2.1.0_linux_arm64.tar.gz"
      sha256 "dfac5cce209694b34056150515db626b6b30c1db0c681029e192a2cb3abfcae0"

      def install
        bin.install "myks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mykso/myks/releases/download/v2.1.0/myks_2.1.0_linux_amd64.tar.gz"
      sha256 "72754c8cedebd9dfb531be2091f7b81c5ff1b9704ed11a2fdb2554d0d9c08f98"

      def install
        bin.install "myks"
      end
    end
  end
end
