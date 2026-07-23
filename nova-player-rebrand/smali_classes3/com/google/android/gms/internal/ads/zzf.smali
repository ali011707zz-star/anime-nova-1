.class public abstract Lcom/google/android/gms/internal/ads/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbb;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzbe;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzf;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbb;->zzh()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbb;->zzk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbb;->zzi()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb(J)V
    .locals 6

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbb;->zzs()I

    move-result v1

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzf;->zzc(IJIZ)V

    return-void
.end method

.method protected abstract zzc(IJIZ)V
.end method
