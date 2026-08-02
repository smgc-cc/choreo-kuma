# Kuma Dockerfile for Choreo

# Version

2.5.0

# Releases

## 2.5.0

### Uncategorized

### 🆕 New Features
- #7645 Add `next-rootless` docker tag 
- #7607 feat: allow unlimited interval rather than 24 days 
- #7597 feat: add voice call option to Plivo notification provider (Thanks @sarveshpatil-plivo)
- #7584 feat: add Plivo SMS notification provider (Thanks @sarveshpatil-plivo)
- #7571 feat: add Ooredoo (Maldives) SMS notification provider (Thanks @islandboymv)
- #7569 feat: Add WxPusher SPT (WxPusher simple push token) notification provider (Thanks @zjiecode)
- #7546 feat: add Flowtriq DDoS detection notification provider (Thanks @jacob-masse @FlyingDove2493)
- #7525 feat: add tracking support on status pages for rybbit analytics (Thanks @DanielOberlechner)
- #7506 feat(notification): add additional headers option for SMTP (Thanks @dnagy)
- #7214 feat: add NTP monitor type for network time protocol monitoring (Thanks @henricook)
- #7114 feat(system-service): add PM2 picker and platform selection (Thanks @KraoESPfan1n)

### 💇‍♀️ Improvements

### 🐞 Bug Fixes
- #7654 fix: correct 12 spelling errors across codebase (Thanks @jannikbx)
- #7641 fix: RSS service status description is wrong 
- #7618 fix: widen stat_daily up/down columns from SMALLINT to unsigned INTEGER (Thanks @kushiemoon-dev)
- #7599 fix: reduce rate-limit log spam when quota is healthy (Thanks @hexonal)
- #7590 fix: double // in badgeUrl breaking Badge generator functionality (Thanks @jaimeagudo)
- #7588 fix(domain-expiry): clarify unsupported RDAP warning (Thanks @arturict)
- #7542 fix: resolve Steam monitor hostnames (Thanks @yuminn-k)
- #7520 fix(discord): timezone with `dayjs.utc()` (Thanks @skkzsh)
- #7516 fix: omit resolver port from DNS monitor service URL (Thanks @skkzsh)
- #7515 fix(monitor): screenshot_delay not saved when editing browser engine monitor (Thanks @GhadiSaab)
- #7472 fix: add timeout functionality to kafka (Thanks @jfgsilva)
- #7465 fix: preserve saved protocol when loading Globalping ping monitor (Thanks @titojuanc)
- #7460 fix: prevent tags dropdown from overflowing viewport (Thanks @Subrat-Dwivedi-22)
- #7290 fix: allow mqtts:// in MQTT monitor (Thanks @Mrstragr @chennin)

### ⬆️ Security Fixes
- #7538 #7349 chore: Update dependencies 
- #7508 chore: Set 14 days cooldown for npm update to mininize the supply-chain-attack 

### 🦎 Translation Contributions
- #7521 #7477 chore: Translations Update from Weblate (Thanks @aindriu80 @Aluisio @andibing @AnnAngela @AntonPalmqvist @arcanjobr @bill162 @ctih1 @cyril59310 @dodog @firedur @Goudarz @Gringit @helakostain @ivanbratovic @kamine81 @kiznick @Mr-Mmmc @MrEddX @OnyxOracle @PolarniMeda @ramazansancar @samsilveira @superpep)

### Others
- #7544 chore: change analytics_type to string type from enum 
- #7543 chore: add build "pr-test" workflow, add a message for testing to new pr. 
- #7541 chore: Add an ability to enable node.js inspector 
- #7535 chore: Remove meaningless entries from en.json 
- #7496 chore: Login form minor changes 

