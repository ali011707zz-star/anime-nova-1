.class public final Lcom/google/android/gms/internal/ads/zzug;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/util/HashSet;

.field private zzb:Landroid/media/LoudnessCodecController;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzuf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final zza(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/LoudnessCodecController;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/media/LoudnessCodecController;

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhaf;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzud;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzud;-><init>(Lcom/google/android/gms/internal/ads/zzug;)V

    .line 3
    invoke-static {p1, v0, v1}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline3;->m(ILjava/util/concurrent/Executor;Landroid/media/LoudnessCodecController$OnLoudnessCodecUpdateListener;)Landroid/media/LoudnessCodecController;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/media/LoudnessCodecController;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-static {p1, v1}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzb(Landroid/media/MediaCodec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline0;->m(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    return-void
.end method

.method public final zzc(Landroid/media/MediaCodec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/LoudnessCodecController;Landroid/media/MediaCodec;)V

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zza:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzug;->zzb:Landroid/media/LoudnessCodecController;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/LoudnessCodecController$$ExternalSyntheticApiModelOutline2;->m(Landroid/media/LoudnessCodecController;)V

    :cond_0
    return-void
.end method
