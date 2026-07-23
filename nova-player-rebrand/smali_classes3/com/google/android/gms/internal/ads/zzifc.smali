.class public final Lcom/google/android/gms/internal/ads/zzifc;
.super Lcom/google/android/gms/internal/ads/zzibl;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifd;->zzd()Lcom/google/android/gms/internal/ads/zzifd;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzibl;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzifc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzifd;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzifd;->zze(I)V

    return-object p0
.end method
