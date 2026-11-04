# calmacroi/homebrew-tap

Homebrew formulae by calmacroi.

## d9s

[d9s](https://github.com/calmacroi/d9s) is a k9s-style terminal UI for local Docker and Docker Compose.

```bash
brew install calmacroi/tap/d9s
```

or

```bash
brew tap calmacroi/tap
brew install d9s
```

## Releasing a new d9s version

1. Tag the release in `calmacroi/d9s` (e.g. `0.2.0`) and push the tag.
2. In `Formula/d9s.rb`, update `url` to the new tag and `sha256` to the checksum of the tarball:

   ```bash
   curl -sL https://github.com/calmacroi/d9s/archive/refs/tags/0.2.0.tar.gz | shasum -a 256
   ```

3. Check it locally, then commit and push:

   ```bash
   brew install --build-from-source calmacroi/tap/d9s && brew test d9s && brew audit --strict d9s
   ```
