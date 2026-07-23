.class public final Lcom/google/android/gms/internal/ads/zzaaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:I

.field private final zzb:J


# direct methods
.method synthetic constructor <init>(IJ[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zza:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zza:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method final synthetic zzb()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zza:I

    return v0
.end method

.method final synthetic zzc()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaaz;->zzb:J

    return-wide v0
.end method
