.class public final Lcom/google/android/gms/internal/ads/zzqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Z

.field public final zzb:Z

.field public final zzc:Z

.field public final zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqg;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zze()Lcom/google/android/gms/internal/ads/zzqh;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqg;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzf()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zza:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzg()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzh()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzi()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:I

    return-void
.end method
