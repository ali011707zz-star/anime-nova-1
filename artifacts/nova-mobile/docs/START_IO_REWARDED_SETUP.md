# Start.io rewarded ads

Start.io is the only rewarded-ad provider used by the Android app.

## Native configuration

- Provider: Start.io
- Android application ID: `207356648`
- Reward type: `REWARDED_VIDEO`
- SDK package: `react-native-start-io-sdk`
- Android SDK version is pinned to `5.3.0` in the APK build workflow for
  compatibility with the current Expo/RN/Kotlin toolchain.

The application ID is compiled into `utils/rewardedAd.ts`. Do not put an
AdMob unit ID in the app or server settings: Start.io uses an application ID,
not an AdMob rewarded-unit ID.

## Reward flow

1. The app requests a short-lived challenge from `/api/ads/reward/start`.
2. Start.io loads and displays the rewarded video.
3. The app only calls `/api/ads/reward/complete` after Start.io reports
   `AdRewarded`.
4. A failed load, no-fill result, or early close leaves the challenge
   incomplete and keeps the prompt open for another attempt.

The final verification still requires a newly built APK on a physical Android
device. Network fill and account approval are controlled by Start.io and cannot
be proven by a JavaScript bundle or by the web preview.