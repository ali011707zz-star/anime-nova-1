# Unity LevelPlay rewarded ads

The Android app uses Unity LevelPlay (IronSource) for rewarded videos.

## Native configuration

- Provider: Unity LevelPlay / IronSource
- Android app key: `9qbxrfx8ldw4intrz`
- Rewarded ad unit: `DefaultRewardedVideo`
- Placement: `Default`
- SDK package: `unity-levelplay-mediation`

## Reward flow

1. The app requests a short-lived challenge from `/api/ads/reward/start`.
2. LevelPlay initializes, loads, and displays the rewarded video.
3. The app only calls `/api/ads/reward/complete` after LevelPlay reports
   `onAdRewarded`.
4. A failed load, no-fill result, timeout, display failure, or early close
   leaves the challenge incomplete and keeps the prompt available for another
   attempt.

The final verification requires a newly built APK on a physical Android
device. The web preview cannot load this native SDK or prove that the
IronSource account has an approved ad fill.