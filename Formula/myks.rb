# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "A configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "4.1.1"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional

  on_macos do
    on_intel do
      url "https://github.com/mykso/myks/releases/download/v4.1.1/myks_4.1.1_darwin_amd64.tar.gz"
      sha256 "6b101af2fa8b9dc824e65e1959d6b97d5661d8bfaf594a5743b91aafe2ab3f91"

      def install
        bin.install "myks"
      end
    end
    on_arm do
      url "https://github.com/mykso/myks/releases/download/v4.1.1/myks_4.1.1_darwin_arm64.tar.gz"
      sha256 "e2568589bf867a51dc3c9eb63838ca4f4d4a1b83b16179315556e8e9f87171cc"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.1.1/myks_4.1.1_linux_amd64.tar.gz"
        sha256 "5fbfa1b28906a5a9df6100b3899186c7bd49728e44db74269a4bdc37e0fa8284"

        def install
          bin.install "myks"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mykso/myks/releases/download/v4.1.1/myks_4.1.1_linux_arm64.tar.gz"
        sha256 "2c220865229f952adc007844035b3a69b332a221233d2d893883c20c84f5b715"

        def install
          bin.install "myks"
        end
      end
    end
  end
end
