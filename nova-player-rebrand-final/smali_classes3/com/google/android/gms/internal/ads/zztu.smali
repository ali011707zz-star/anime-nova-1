.class public final Lcom/google/android/gms/internal/ads/zztu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzui;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgru;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgru;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zztt;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zztt;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzts;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzts;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzgru;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzuh;)Lcom/google/android/gms/internal/ads/zztv;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzun;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    const-string v2, "createCodec:"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzty;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztu;->zzb:Lcom/google/android/gms/internal/ads/zzgru;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgru;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-direct {v7, v5, v1}, Lcom/google/android/gms/internal/ads/zzty;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zztv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:Lcom/google/android/gms/internal/ads/zzgru;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgru;->zza()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/HandlerThread;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzf:Lcom/google/android/gms/internal/ads/zzug;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zztv;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Lcom/google/android/gms/internal/ads/zzul;Lcom/google/android/gms/internal/ads/zzug;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzd:Landroid/view/Surface;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzun;->zzh:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x23

    if-lt v0, v6, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Landroid/media/MediaFormat;

    .line 8
    invoke-virtual {v4, p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zztv;->zzt(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :goto_1
    move-object v3, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p1, v0

    move-object v5, v3

    :goto_2
    if-nez v3, :cond_1

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Landroid/media/MediaCodec;->release()V

    goto :goto_3

    .line 9
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zztv;->zzl()V

    .line 11
    :cond_2
    :goto_3
    throw p1
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzuh;)Lcom/google/android/gms/internal/ads/zzuk;
    .locals 0

    .line 0
    const/4 p1, 0x0

    throw p1
.end method
