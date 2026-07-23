.class public final Lcom/google/android/gms/internal/ads/zzhoz;
.super Lcom/google/android/gms/internal/ads/zzibl;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhpa;->zzh()Lcom/google/android/gms/internal/ads/zzhpa;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzibl;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzhoz;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhpa;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhpa;->zzg(Lcom/google/android/gms/internal/ads/zzian;)V

    return-object p0
.end method
