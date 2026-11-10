# TimeLedger

A local-first time logging dashboard prototype.

## Current features
- Manually record activities, category, app/tool, duration, time and focused status.
- Daily totals, focused time, category breakdown and a configurable daily goal.
- Change date, delete entries and export all records to CSV.
- Browser localStorage persistence and a basic offline service worker.

## Run
Open index.html in a browser or serve this folder with any static web server. No build step or environment variables are required.

## Important scope
This is the first web dashboard/prototype, not the automatic phone tracker. A website cannot reliably monitor which other apps are in use. Automatic Android tracking requires a native Android app and Usage Access permission. iOS Screen Time tracking requires Apple's relevant APIs, entitlements and user authorization, and has platform limitations. App-level duration also cannot reliably determine what a person did inside an app (for example, educational vs entertainment video viewing). The first version therefore uses manual activity labels and corrections.

## Privacy
Entries are stored in this browser's localStorage. Clearing browser data can erase them. There is no account, cloud sync, central database or email collection in this prototype.
