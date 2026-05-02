# Kuma Dockerfile for Choreo

# Version

2.3.0

# Releases

### ⚠️ Breaking changes
- #7194 fix: Revert "add sorting to status pages"
  - No more sorting feature in status pages.
  - Due to bad performance.
- #7312 fix(database): add `UPTIME_KUMA_SQLITE_SINGLE_CONNECTION`
  - For Raspberry Pi users, you may have to set it to `true` to avoid SQLite locking issues. 
  - Mainly affected Raspberry Pi users only, you can ignore it if you are not using devices like Raspberry Pi.

### 🆕 New Features
- #7304 feat: websocket improve to fix issue #7268 including support authentication (Thanks @sofia-fernandez-six)
- #7207 feat(notification): add custom message template support for Evolution provider (Thanks @kbrianps)
- #7201 feat: add Telnyx messaging provider (Thanks @LuvForAirplanes)
- #7182 feat: Add VK notification provider (Thanks @FunNikita)
- #7160 feat: Add MAX messenger notification provider (Thanks @Redleks)
- #7156 feat: add OracleDB monitor (Thanks @sitiom)
- #7154 feat: add collapsible groups to status page (Thanks @marco-carvalho)

### 💇‍♀️ Improvements

- #7303 feat(ui): add a helptext that RTT for the ping monitor is not avaliable on linux (Thanks @stchigel)
- #7300 feat(ux): changed warning msg (Thanks @hemanth5544)
- #7128 fix: Update Home Assistant notification help text for HA 2024 Services→Actions rename (Thanks @tr4nt0r)

### 🐞 Bug Fixes

- #7248 fix(notification): check for monitorJSON in Stackfield provider (Thanks @jlbrt)
- #7166 fix: Handle SSL in setup database temp server 
- #7235 fix(uptime): ensure correct handling of missing time buckets in uptime calculations (Thanks @adrianceding)
- #7221 fix(notification): ensure applyExisting is not saved to database 
- #7198 fix: Domain expiry doesn't seem to update #7189 (Thanks @shanto)
- #7155 fix: propagate create errors (Thanks @otbutz)
- #7159 fix: monitor graph gaps for sub-millisecond TCP pings (Thanks @0xRozier)
- #7125 fix: prometheus metrics have two series for a single monitor when that monitor has tags (Thanks @nicjansma)

### 🦎 Translation Contributions
- #7108 feat: Add English (United Kingdom) language support (Thanks @andibing)
- #7292 #7197 #7132 chore: Translations Update from Weblate (Thanks @aindriu80 @Ale1x @Aluisio @andibing @AnnAngela @CammarataLudovico @cyril59310 @dodog @efenow @fcordeiro @firedur @FunNikita @Gringit @Hamstio1 @helakostain @ivanbratovic @kevinheyer-dev @mlopezcoria @Mo7amm1d @MrEddX @numarkpro @Redleks @rodis120 @samsilveira @thisisjaymehta @ttymayor @Virenbar @wibe01204 @Zeromskas)

### Others
- #7317 #7195 #7133 chore: Update dependencies 
- #7204 chore: Add agents.md - anti AI slop 
- #7146 chore: Add monthly workflow to build `push` Docker image 