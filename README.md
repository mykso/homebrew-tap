# mykso/homebrew-tap

[Homebrew](https://brew.sh) tap for [myks](https://github.com/mykso/myks), a
configuration framework for Kubernetes applications. Myks downloads external
sources (Helm charts, git repositories, and anything else
[vendir](https://carvel.dev/vendir/) supports) and renders them into
ready-to-use Kubernetes manifests for many applications across many clusters.

| Package | Type | Description                                         | Repository                    |
| ------- | ---- | --------------------------------------------------- | ----------------------------- |
| myks    | Cask | Configuration framework for Kubernetes applications | https://github.com/mykso/myks |

Works on macOS and Linux, on both Intel and ARM.

## Installation

```shell
brew install --cask mykso/tap/myks
```

This taps `mykso/tap` automatically. To tap it explicitly first:

```shell
brew tap mykso/tap
brew install --cask myks
```

### Dependencies

Homebrew installs these together with myks:

- [git](https://git-scm.com), for fetching git sources
- [helm](https://helm.sh), for rendering Helm charts

[ytt](https://carvel.dev/ytt/) and [vendir](https://carvel.dev/vendir/) are
built into myks and need no separate install.

On macOS, the cask removes the `com.apple.quarantine` attribute from the `myks`
binary after install, so Gatekeeper does not block the unsigned binary.

## Upgrade

```shell
brew update
brew upgrade --cask myks
```

### Migrating from the formula

Myks used to ship as a formula. The formula stopped at version 4.9.0 and is
disabled; new releases ship only as a cask. If `brew list --formula` shows
`myks`, switch to the cask:

```shell
brew uninstall --formula myks
brew install --cask mykso/tap/myks
```

## Uninstall

```shell
brew uninstall --cask myks
brew untap mykso/tap  # optional
```

## Other installation methods

AUR, APK/DEB/RPM packages, Docker images, and Nix are covered in the
[myks installation guide](https://github.com/mykso/myks/tree/main/docs#installation).

## Development

[GoReleaser](https://goreleaser.com) generates `Casks/myks.rb` on every myks
release and commits it here as Mykso Bot. Do not edit it by hand: change the
`homebrew_casks` section of
[`.goreleaser.yml`](https://github.com/mykso/myks/blob/main/.goreleaser.yml) in
the myks repository instead.

`Formula/myks.rb` is the disabled legacy formula, kept so existing installs get
a pointer to the cask.

To test the cask from a local checkout:

```shell
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --cask --debug --verbose ./Casks/myks.rb
brew audit --cask --strict mykso/tap/myks
```

## License

[MIT](LICENSE)
