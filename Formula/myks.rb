# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Myks < Formula
  desc "A configuration framework for Kubernetes applications"
  homepage "https://github.com/mykso/myks"
  version "3.4.2"
  license "MIT"

  depends_on "git" => :optional
  depends_on "helm" => :optional
  depends_on "vendir" => :optional
  depends_on "ytt" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mykso/myks/releases/download/v3.4.2/myks_3.4.2_darwin_arm64.tar.gz"
      sha256 "872494cf5598c77f5fa65365160f7c2f02c0f0c4267c53a0f39b5dab03426b50"

      def install
        bin.install "myks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mykso/myks/releases/download/v3.4.2/myks_3.4.2_darwin_amd64.tar.gz"
      sha256 "0577376a79830ed871dac084805e3f047fce9a06da7166fcbc5fb45439eea392"

      def install
        bin.install "myks"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/mykso/myks/releases/download/v3.4.2/myks_3.4.2_linux_arm64.tar.gz"
      sha256 "972b3d682b7b369ba27010a8887d88d5f1257f5944e5252eb97c583d1e4d1a05"

      def install
        bin.install "myks"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mykso/myks/releases/download/v3.4.2/myks_3.4.2_linux_amd64.tar.gz"
      sha256 "e3185a20d57e567d9b20deca9e7095dcd5efade8354a1bed4da9f2aa77c9318f"

      def install
        bin.install "myks"
      end
    end
  end
end
