.class public final Lcom/google/android/gms/internal/ads/zzfov;
.super Lcom/google/android/gms/internal/ads/zzibl;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfoy;->zze()Lcom/google/android/gms/internal/ads/zzfoy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzibl;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoy;->zza()I

    move-result v0

    return v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfow;)Lcom/google/android/gms/internal/ads/zzfov;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfox;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfoy;->zzc(Lcom/google/android/gms/internal/ads/zzfox;)V

    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfov;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzibl;->zza:Lcom/google/android/gms/internal/ads/zzibr;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfoy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfoy;->zzd()V

    return-object p0
.end method
