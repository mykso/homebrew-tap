# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "Configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "4.4.2"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mykso/myks/releases/download/v4.4.2/myks_4.4.2_darwin_amd64.tar.gz"
      sha256 "3532f6fadd80644c41300df867c6cff56bf05588ad68d59e8960e0f69daa0fd0"

      def install
        bin.install "myks"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mykso/myks/releases/download/v4.4.2/myks_4.4.2_darwin_arm64.tar.gz"
      sha256 "b01195f5eed76250a7f9b23bc8eba97724993c2ab31438f18cdb260adf3befbb"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.4.2/myks_4.4.2_linux_amd64.tar.gz"
        sha256 "ddde7e55ec07a3ae38a2cdb3fc8bbf8235dd217b298cd777f535c17670c98e71"

        def install
          bin.install "myks"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.4.2/myks_4.4.2_linux_arm64.tar.gz"
        sha256 "21947c02b130f81ecd54abeec29e9313ed6ae6bb567aceddd3ac0fb0772f7973"

        def install
          bin.install "myks"
        end
      end
    end
  end
end
