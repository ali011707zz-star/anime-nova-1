# AdMob Rewarded setup

The app uses the standard **Rewarded** ad format. It is not using Banner,
Interstitial, App Open, Native Advanced, or Rewarded Interstitial.

## Safe default

When no environment variable is present, the app uses Google's official
Android rewarded test unit:

`ca-app-pub-3940256099942544/5224354917`

This keeps local/development builds from accidentally serving live ads.

## Production unit

After creating an AdMob **Rewarded** ad unit for the Android app, provide its
unit ID to the mobile build as:

`EXPO_PUBLIC_ADMOB_REWARDED_AD_UNIT_ID`

The code automatically uses that value and reports `NOVA_ADS_TEST_MODE` as
`false`. Do not commit the real unit ID to source files; configure it in the
build environment used for the VPS/GitHub APK build.

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