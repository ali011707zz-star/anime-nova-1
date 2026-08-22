# AdMob Rewarded setup

The app uses the standard **Rewarded** ad format. It is not using Banner,
Interstitial, App Open, Native Advanced, or Rewarded Interstitial.

## Production unit

The Android app uses the real AdMob **Rewarded** unit configured for the
Anime NOVA app. Provide its unit ID to the mobile build as:

`EXPO_PUBLIC_ADMOB_REWARDED_AD_UNIT_ID`

The code uses the configured production value and does not fall back to a test
unit. Do not replace it with Google's sample IDs in a release build.

The AdMob application IDs in `app.json` are also currently Google's test
application IDs. They must be replaced with the real Android/iOS application
IDs before publishing a production build; the rewarded unit ID alone is not
enough for a live release.

## Remote control without rebuilding the APK

The server stores the current setting in `app_config` under
`reward_ads:settings` and returns it from `/api/ads/state`. The first build
that includes this code can receive later changes remotely:

```json
{
  "enabled": true,
  "rewardedAdUnitId": "ca-app-pub-xxxxxxxxxxxxxxxx/xxxxxxxxxx"
}
```

An administrator can read or update it through:

- `GET /api/admin/ads-settings`
- `PATCH /api/admin/ads-settings`

The endpoint requires the existing web-admin/admin authentication. The
default is `enabled: true`, so the current reward gate is not weakened by
this change. Changing the unit ID or enabled state takes effect for clients
when they refresh their ad state; no new APK is required.

## General remote configuration

The same server exposes the protected control endpoint
`/api/admin/remote-config`. After one APK build containing remote-config
support, the following can be changed without another APK:

- `maintenanceMode` and `maintenanceMessage`
- `features.comments`, `watchHistory`, `subscriptions`, `downloads`,
  `animationSection`
- individual `sources` switches
- `limits.downloadLimit` (0–100)
- `limits.watchAccessMinutes` (1–1440)
- the existing `announcements` endpoint

Only administrators can read or update this endpoint. These settings control
behaviour already present in the APK; they cannot add new native code,
permissions, screens, or dependencies remotely.