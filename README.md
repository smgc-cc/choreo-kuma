# Kuma Dockerfile for Choreo

# Version

2.5.8

# Releases

### 🐞 Bug Fixes
- #8049 fix: Docker verification check sometimes not catching invalid responses (2.5.X backport) (Thanks @Abestanis)
- #8038 fix: add `next-slim-rootless` docker tag
- #8028 fix: drop TLS support from the TCP Port monitor (It never worked as expected and very buggy, all existing monitors will become normal TCP monitors)

### ⬆️ Security Fixes

- GHSA-v2p3-6f5h-6hhf [Admin Only] RCE (Thanks @Sami111-Afk) (Open a help issue to ask to reveal it after 7 days, in case i forget to)

### Others
- #8037 revert: hide/show password toggle in login page (#7672) (Because the height is inconsistent)


