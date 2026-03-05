# Kuma Dockerfile for Choreo

# Version

2.2.0

# Releases

### 🆕 New Features
- #7088 feat(proxy): allow socks proxy for the notifications (Thanks @ASLanin)
- #7046 feat: add whatsApp (360messenger) notification provider (Thanks @WaMessenger)
- #6989 feat: allow templating in the Signal notificaiton provider (Thanks @karthikeya-333)

### 💇‍♀️ Improvements
- #6979 refactor: improve SQLite multiple connections 

### 🐞 Bug Fixes
- #7019 fix: Uptime Kuma is not able to start on older version of Node.js 20 (~20.17.0) 
- #7076 fix(monitor-list): cannot display monitor name in full width 
- #7069 fix(monitor-list): tag list do not update 
- #7058 chore: improve changelog generator 
- #7056 fix(globalping): retry creating the measurement on status 500 (Thanks @radulucut)
- #7055 fix(globalping): show error message when using multiple locations (Thanks @radulucut)
- #7048 fix: Fix domain validation not allowing for PTR DNS records (Thanks @sgdc3)
- #7045 fix: Remove forced DOWN status in group monitor (Thanks @MayMeow)
- #7043 fix: Setting Status Page Analytics Type to "None" fails with SQLite constraint violation 
- #7011 fix(edit-monitor): several issues in edit page 
- #7010 fix(edit-monitor): url validation is incorrect 
- #6999 fix: show actual bind address in startup logs (Thanks @mixelburg)
- #6994 fix: preserve Domain Name Expiry Notification setting when editing monitor (Thanks @RohitDarekar816)
- #6984 fix: show certificate expiry on status page for TCP monitors (Thanks @mixelburg)

### ⬆️ Security Fixes
- GHSA-c7hf-c5p5-5g6h Moderate security issue affected `>= 2.0.0 && <= 2.1.3` (Will be revealed later)

### 🦎 Translation Contributions
- #7072 #7007 chore: Translations Update from Weblate (Thanks @2000Arion @abcsnoob @aindriu80 @Aluisio @AnnAngela @AntonPalmqvist @BelenCaSa @cyril59310 @dodog @florian-berger @helakostain @ivanbratovic @kiznick @LovesAsuna @mariogarridopt @MrDariusz @MrEddX @robertcoroianu @Virenbar)

### Others

- #7015 chore: follow up #7013 
- #7013 chore: add PR description template check workflow 
- #5179 feat: structured logging (JSON) (Thanks @SapphicCode)
- #7092 chore: update to 2.2.0 
- #7071 #6991 chore: Update dependencies 
- #7032 chore: remove @aws-sdk, @azure packages 
- #7077 chore: generate package-lock.json from scratch to ensure accuracy 