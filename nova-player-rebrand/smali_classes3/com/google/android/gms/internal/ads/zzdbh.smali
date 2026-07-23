.class public final Lcom/google/android/gms/internal/ads/zzdbh;
.super Lcom/google/android/gms/internal/ads/zzdhd;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdbi;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdhd;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbg;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzdbg;-><init>(Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdhd;->zzs(Lcom/google/android/gms/internal/ads/zzdhc;)V

    return-void
.end method
