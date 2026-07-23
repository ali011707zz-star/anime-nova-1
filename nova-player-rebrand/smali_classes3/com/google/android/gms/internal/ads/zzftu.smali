.class public final Lcom/google/android/gms/internal/ads/zzftu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzftw;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzftv;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzftw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftu;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzftv;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzftv;-><init>(Lcom/google/android/gms/internal/ads/zzftt;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzftu;->zzb:Lcom/google/android/gms/internal/ads/zzftv;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzftt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftu;->zzb:Lcom/google/android/gms/internal/ads/zzftv;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzftt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzftu;->zza:Lcom/google/android/gms/internal/ads/zzftw;

    return-object v0
.end method
