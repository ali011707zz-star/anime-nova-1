.class public final Lcom/google/android/gms/internal/ads/zzuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzui;


# instance fields
.field private final zza:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgru;Lcom/google/android/gms/internal/ads/zzgru;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzuh;)Lcom/google/android/gms/internal/ads/zzuk;
    .locals 6

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzuc;->zza:Landroid/content/Context;

    if-eqz v1, :cond_2

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_2

    .line 1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.amazon.hardware.tv_screen"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzc:Lcom/google/android/gms/internal/ads/zzv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzas;->zzf(Ljava/lang/String;)I

    move-result v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzP(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    const-string v3, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zztu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zztu;-><init>(I)V

    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zzuh;)Lcom/google/android/gms/internal/ads/zztv;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-string v2, "createCodec:"

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzuh;->zza:Lcom/google/android/gms/internal/ads/zzun;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    invoke-static {v4}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    .line 4
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "configureCodec"

    .line 5
    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzd:Landroid/view/Surface;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzun;->zzh:Z

    if-eqz v3, :cond_3

    const/16 v3, 0x23

    if-lt v0, v3, :cond_3

    const/16 v5, 0x8

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzb:Landroid/media/MediaFormat;

    .line 6
    invoke-virtual {v2, v0, v4, v1, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "startCodec"

    .line 8
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 10
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvh;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzuh;->zzf:Lcom/google/android/gms/internal/ads/zzug;

    .line 11
    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Landroid/media/MediaCodec;Lcom/google/android/gms/internal/ads/zzug;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :goto_3
    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_4
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 13
    :cond_4
    throw p1
.end method
