# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "Configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "4.6.0"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mykso/myks/releases/download/v4.6.0/myks_4.6.0_darwin_amd64.tar.gz"
      sha256 "db7e2f4d3376f9a56f7c364d33521e411cb991e4d7dc7e72f850b7400a57efe8"

      def install
        bin.install "myks"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mykso/myks/releases/download/v4.6.0/myks_4.6.0_darwin_arm64.tar.gz"
      sha256 "0cea345c4a2146b0a28a85a83e9050ae2c7c6ae73c55847c6de14088031f8662"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.6.0/myks_4.6.0_linux_amd64.tar.gz"
        sha256 "b3e723b0885bb798aa563d0cfe17032ee57ed70122d365262282bc442f377bbf"

        def install
          bin.install "myks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.6.0/myks_4.6.0_linux_arm64.tar.gz"
        sha256 "46fbfc03a14245cb134ddaf2ae66163c5043e782001031220e26731094c40d21"

        def install
          bin.install "myks"
        end
      end
    end
  end
end
