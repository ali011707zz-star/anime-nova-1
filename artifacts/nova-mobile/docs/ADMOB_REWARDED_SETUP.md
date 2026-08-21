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