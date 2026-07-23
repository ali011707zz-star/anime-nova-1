.class final Lcom/google/android/gms/internal/ads/zzvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzuz;


# instance fields
.field private final zza:I

.field private zzb:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zza:I

    return-void
.end method

.method private final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zza:I

    new-instance v1, Landroid/media/MediaCodecList;

    invoke-direct {v1, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v1}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvb;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:[Landroid/media/MediaCodecInfo;

    .line 2
    array-length v0, v0

    return v0
.end method

.method public final zzb(I)Landroid/media/MediaCodecInfo;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzvb;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->zzb:[Landroid/media/MediaCodecInfo;

    .line 2
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public final zzd(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zze(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
