# Kuma Dockerfile for Choreo

# Version

2.5.9

# Releases


### 🐞 Bug Fixes

- #8082 fix: runtime timeout fallback used milliseconds for a seconds field 
- #8081 fix: reset push monitor retries from the last stored heartbeat 
- #8079 fix: remove duplicated refresh timer on status page 
- #8064 fix: display recurring maintenance in its configured timezone (Thanks @kuxiaowo)

### ⬆️ Security Fixes

- GHSA-86ch-2247-gr56 fix: RSS cache poisoning (Thanks @the-arma-of-owl)
- #8080 chore: drop outdated apicache, migrate to http-cache-semantics (related to the above issue)
- #8050 chore: Update dependencies 

