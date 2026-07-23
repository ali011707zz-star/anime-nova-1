.class public final Lcom/google/android/gms/internal/ads/zzun;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final zze:Z

.field public final zzf:Z

.field public final zzg:Z

.field public final zzh:Z

.field private final zzi:Z

.field private zzj:I

.field private zzk:I

.field private zzl:F


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzun;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzun;->zzg:Z

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/zzun;->zze:Z

    iput-boolean p10, p0, Lcom/google/android/gms/internal/ads/zzun;->zzf:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzun;->zzh:Z

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzi:Z

    const p1, -0x800001

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzl:F

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzj:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzk:I

    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lcom/google/android/gms/internal/ads/zzun;
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzun;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const-string v3, "adaptive-playback"

    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v2

    :goto_0
    if-eqz p3, :cond_1

    const-string v3, "tunneled-playback"

    .line 2
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    if-nez p8, :cond_2

    if-eqz p3, :cond_3

    const-string v3, "secure-playback"

    .line 3
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v10, v1

    goto :goto_2

    :cond_3
    move v10, v2

    :goto_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x23

    if-lt v3, v4, :cond_4

    if-eqz p3, :cond_4

    const-string v3, "detached-surface"

    .line 4
    invoke-virtual {p3, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "Xiaomi"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "OPPO"

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "realme"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "motorola"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "LENOVO"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v11, v2

    move-object v2, p1

    goto :goto_3

    :cond_5
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move v11, v1

    move-object v1, p0

    .line 10
    :goto_3
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/zzun;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZZ)V

    return-object v0
.end method

.method private final zzj(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvg;->zzg(Lcom/google/android/gms/internal/ads/zzv;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzv;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object v2

    .line 2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const/4 v4, -0x1

    const-string v5, "video/hevc"

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    const-string v7, "video/mv-hevc"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzun;->zzc:Ljava/lang/String;

    .line 3
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzas;->zzh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_8

    .line 5
    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6
    sget v2, Lcom/google/android/gms/internal/ads/zzvg;->$r8$clinit:I

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzv;->zzr:Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgm;->zzk(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    const-string v8, "\\."

    .line 9
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 10
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzdo;->zze(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzi;)Landroid/util/Pair;

    move-result-object v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_1c

    .line 11
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 12
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v8, "video/dolby-vision"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v8, 0x8

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    .line 13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x631b55f6

    if-eq v11, v12, :cond_5

    const v12, -0x63185e82

    if-eq v11, v12, :cond_4

    const v12, 0x4f62373a

    if-eq v11, v12, :cond_3

    goto :goto_1

    .line 30
    :cond_3
    const-string v11, "video/avc"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v10

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v6

    goto :goto_1

    :cond_5
    const-string v11, "video/av01"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v4, v9

    :cond_6
    :goto_1
    if-eqz v4, :cond_8

    if-eq v4, v6, :cond_7

    if-eq v4, v9, :cond_7

    goto :goto_3

    :cond_7
    move v7, v9

    :goto_2
    move v2, v10

    goto :goto_3

    :cond_8
    move v7, v8

    goto :goto_2

    :cond_9
    :goto_3
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzun;->zzi:Z

    const-string v4, "audio/ac4"

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0x2a

    if-ne v7, v3, :cond_1c

    move v7, v3

    .line 15
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzun;->zzb()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    .line 16
    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v12, 0x4

    const/16 v13, 0x10

    if-eqz v4, :cond_c

    array-length v4, v3

    if-nez v4, :cond_c

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v3, :cond_b

    .line 17
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 18
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v3

    const/16 v4, 0x12

    if-le v3, v4, :cond_b

    move v3, v13

    goto :goto_4

    :cond_b
    move v3, v8

    :goto_4
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    const/16 v14, 0x101

    .line 19
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzvg;->zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v14

    aput-object v14, v4, v10

    const/16 v14, 0x201

    .line 20
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzvg;->zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v14

    aput-object v14, v4, v6

    const/16 v14, 0x202

    .line 21
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzvg;->zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v14

    aput-object v14, v4, v9

    const/16 v14, 0x402

    .line 22
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzvg;->zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v4, v15

    const/16 v14, 0x404

    .line 23
    invoke-static {v14, v3}, Lcom/google/android/gms/internal/ads/zzvg;->zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    aput-object v3, v4, v12

    move-object v3, v4

    :cond_c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-ne v4, v14, :cond_18

    const-string v4, "video/x-vnd.on2.vp9"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 24
    array-length v4, v3

    if-nez v4, :cond_18

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v3, :cond_d

    .line 25
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 26
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_5

    :cond_d
    move v3, v10

    :goto_5
    const v4, 0xaba9500

    if-lt v3, v4, :cond_e

    const/16 v8, 0x400

    goto :goto_6

    :cond_e
    const v4, 0x7270e00

    if-lt v3, v4, :cond_f

    const/16 v8, 0x200

    goto :goto_6

    :cond_f
    const v4, 0x3938700

    if-lt v3, v4, :cond_10

    const/16 v8, 0x100

    goto :goto_6

    :cond_10
    const v4, 0x1c9c380

    if-lt v3, v4, :cond_11

    const/16 v8, 0x80

    goto :goto_6

    :cond_11
    const v4, 0x112a880

    if-lt v3, v4, :cond_12

    const/16 v8, 0x40

    goto :goto_6

    :cond_12
    const v4, 0xb71b00

    if-lt v3, v4, :cond_13

    const/16 v8, 0x20

    goto :goto_6

    :cond_13
    const v4, 0x6ddd00

    if-lt v3, v4, :cond_14

    move v8, v13

    goto :goto_6

    :cond_14
    const v4, 0x36ee80

    if-lt v3, v4, :cond_15

    goto :goto_6

    :cond_15
    const v4, 0x1b7740

    if-lt v3, v4, :cond_16

    move v8, v12

    goto :goto_6

    :cond_16
    const v4, 0xc3500

    if-lt v3, v4, :cond_17

    move v8, v9

    goto :goto_6

    :cond_17
    move v8, v6

    :goto_6
    new-array v3, v6, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 27
    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzvg;->zzf(II)Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v4

    aput-object v4, v3, v10

    .line 28
    :cond_18
    array-length v4, v3

    move v8, v10

    :goto_7
    if-ge v8, v4, :cond_1b

    aget-object v12, v3, v8

    .line 29
    iget v13, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v13, v7, :cond_1a

    iget v12, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v12, v2, :cond_19

    if-nez p2, :cond_1a

    :cond_19
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    if-ne v7, v9, :cond_1c

    sget-object v12, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v13, "sailfish"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    const-string v13, "marlin"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 30
    :cond_1b
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzv;->zzk:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzun;->zzc:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "codec.profileLevel, "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v10

    :cond_1c
    :goto_8
    return v6
.end method

.method private final zzl(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    const-string v1, "audio/flac"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    const-string v0, "c2.android.flac.decoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private final zzm(Ljava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    add-int/lit8 v5, v5, 0xe

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "NoSupport ["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecInfo"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzee;->zza(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static zzn(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 4

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzun;->zzo(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    .line 2
    iget p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p3, v0

    if-eqz v0, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    .line 6
    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    return v3

    .line 7
    :cond_2
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getAchievableFrameRatesFor(II)Landroid/util/Range;

    move-result-object p0

    if-nez p0, :cond_3

    return v3

    .line 8
    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    cmpg-double p0, p3, p0

    if-gtz p0, :cond_4

    return v3

    :cond_4
    return v1

    .line 4
    :cond_5
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private static zzo(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    .line 4
    div-int/2addr p1, v0

    mul-int/2addr p1, v0

    add-int/2addr p2, p0

    add-int/lit8 p2, p2, -0x1

    .line 5
    div-int/2addr p2, p0

    mul-int/2addr p2, p0

    .line 6
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzun;->zzk(Lcom/google/android/gms/internal/ads/zzv;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzl(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzun;->zzi:Z

    if-eqz v2, :cond_5

    .line 4
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-lez v1, :cond_4

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-gtz v2, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzz:F

    float-to-double v3, p1

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzun;->zzg(IID)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0

    .line 6
    :cond_5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v4, :cond_6

    const-string p1, "sampleRate.caps"

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    .line 8
    :cond_6
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v4

    if-nez v4, :cond_7

    const-string p1, "sampleRate.aCaps"

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    .line 10
    :cond_7
    invoke-virtual {v4, v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x14

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "sampleRate.support, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    .line 11
    :cond_8
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-eq p1, v3, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v2, :cond_9

    const-string p1, "channelCount.caps"

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    .line 13
    :cond_9
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    move-result-object v2

    if-nez v2, :cond_a

    const-string p1, "channelCount.aCaps"

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    .line 15
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    move-result v2

    if-gt v2, v0, :cond_f

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_b

    if-lez v2, :cond_b

    goto/16 :goto_2

    .line 17
    :cond_b
    const-string v5, "audio/mpeg"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/3gpp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/amr-wb"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/mp4a-latm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/vorbis"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/opus"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/raw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/flac"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/g711-alaw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/g711-mlaw"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "audio/gsm"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_2

    :cond_c
    const-string v5, "audio/ac3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v4, 0x6

    goto :goto_1

    .line 16
    :cond_d
    const-string v5, "audio/eac3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v4, 0x10

    goto :goto_1

    :cond_e
    const/16 v4, 0x1e

    .line 17
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x20

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "AssumedMaxChannelAdjustment: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ["

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecInfo"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    :cond_f
    :goto_2
    if-ge v2, p1, :cond_10

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x16

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "channelCount.support, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    :cond_10
    return v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzj(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzun;->zzk(Lcom/google/android/gms/internal/ads/zzv;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzl(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzv;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzi:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zze:Z

    return p1

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;)Lcom/google/android/gms/internal/ads/zzio;
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzv;->zzo:Ljava/lang/String;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzun;->zzi:Z

    if-eqz v4, :cond_e

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzv;->zzA:I

    .line 2
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzv;->zzA:I

    if-eq v4, v5, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    .line 3
    iget v5, p2, Lcom/google/android/gms/internal/ads/zzv;->zzv:I

    if-ne v4, v5, :cond_2

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzv;->zzw:I

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzun;->zze:Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    or-int/lit16 v0, v0, 0x200

    :cond_4
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzi;->zza(Lcom/google/android/gms/internal/ads/zzi;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzi;->zza(Lcom/google/android/gms/internal/ads/zzi;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 5
    :cond_5
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzv;->zzE:Lcom/google/android/gms/internal/ads/zzi;

    .line 6
    invoke-static {v4, v5}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    or-int/lit16 v0, v0, 0x800

    :cond_6
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "SM-T230"

    .line 7
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzv;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v4

    if-nez v4, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzv;->zzx:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    iget v7, p1, Lcom/google/android/gms/internal/ads/zzv;->zzy:I

    if-eq v7, v6, :cond_8

    .line 9
    iget v6, p2, Lcom/google/android/gms/internal/ads/zzv;->zzx:I

    if-ne v4, v6, :cond_8

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzv;->zzy:I

    if-ne v7, v4, :cond_8

    if-eqz v2, :cond_8

    or-int/lit8 v0, v0, 0x2

    :cond_8
    const/4 v2, 0x2

    if-nez v0, :cond_a

    const-string v4, "video/dolby-vision"

    .line 10
    invoke-static {v1, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object v1

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    .line 13
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    move v0, v2

    :cond_a
    if-nez v0, :cond_c

    new-instance v4, Lcom/google/android/gms/internal/ads/zzio;

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzv;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result v0

    if-eq v3, v0, :cond_b

    :goto_1
    move v8, v2

    goto :goto_2

    :cond_b
    const/4 v2, 0x3

    goto :goto_1

    :goto_2
    const/4 v9, 0x0

    move-object v6, p1

    move-object v7, p2

    .line 16
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object v4

    :cond_c
    move-object v7, p1

    move-object v8, p2

    :cond_d
    move v10, v0

    goto/16 :goto_6

    :cond_e
    move-object v7, p1

    move-object v8, p2

    .line 30
    iget p1, v7, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    .line 17
    iget p2, v8, Lcom/google/android/gms/internal/ads/zzv;->zzG:I

    if-eq p1, p2, :cond_f

    or-int/lit16 v0, v0, 0x1000

    :cond_f
    iget p1, v7, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    .line 18
    iget p2, v8, Lcom/google/android/gms/internal/ads/zzv;->zzH:I

    if-eq p1, p2, :cond_10

    or-int/lit16 v0, v0, 0x2000

    :cond_10
    iget p1, v7, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    .line 19
    iget p2, v8, Lcom/google/android/gms/internal/ads/zzv;->zzI:I

    if-eq p1, p2, :cond_11

    or-int/lit16 v0, v0, 0x4000

    :cond_11
    if-nez v0, :cond_16

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    const-string p2, "audio/mp4a-latm"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "audio/ac4"

    if-nez p2, :cond_12

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 21
    :cond_12
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object p2

    .line 22
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdo;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Landroid/util/Pair;

    move-result-object v2

    if-eqz p2, :cond_16

    if-eqz v2, :cond_16

    .line 23
    iget-object v3, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 24
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x2a

    if-ne v3, v5, :cond_14

    if-eq v4, v5, :cond_13

    goto :goto_3

    .line 33
    :cond_13
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 34
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object v5

    .line 25
    :cond_14
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 26
    invoke-virtual {p2, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_4

    .line 32
    :cond_15
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 33
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object v5

    :cond_16
    :goto_4
    if-nez v0, :cond_18

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    const-string p2, "audio/eac3-joc"

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    const-string p2, "audio/eac3"

    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_5

    .line 31
    :cond_17
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 32
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object v5

    .line 29
    :cond_18
    :goto_5
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzv;->zzd(Lcom/google/android/gms/internal/ads/zzv;)Z

    move-result p1

    if-nez p1, :cond_19

    or-int/lit8 v0, v0, 0x20

    :cond_19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    const-string p2, "audio/opus"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    or-int/lit8 p1, v0, 0x2

    move v0, p1

    :cond_1a
    if-nez v0, :cond_d

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 31
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object v5

    .line 16
    :goto_6
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzio;

    const/4 v9, 0x0

    .line 30
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzio;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzv;II)V

    return-object v5
.end method

.method public final zzg(IID)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "sizeAndRate.caps"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "sizeAndRate.vCaps"

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "x"

    const-string v7, "@"

    if-lt v2, v3, :cond_4

    .line 4
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzup;->zza(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    move-result v2

    if-ne v2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    if-eq v2, v5, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "sizeAndRate.cover, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    .line 5
    :cond_4
    :goto_0
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzun;->zzn(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v2

    if-nez v2, :cond_8

    if-ge p1, p2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzun;->zza:Ljava/lang/String;

    const-string v3, "OMX.MTK.VIDEO.DECODER.HEVC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "mcv5a"

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 6
    :cond_5
    invoke-static {v0, p2, p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzun;->zzn(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    .line 7
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v5

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "sizeAndRate.rotated, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzun;->zzb:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    .line 8
    sget-object p4, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    add-int/2addr v3, p3

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v1

    add-int/2addr v3, v5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AssumedSupport ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzee;->zza(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_7
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "sizeAndRate.support, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzun;->zzm(Ljava/lang/String;)V

    return v1

    :cond_8
    :goto_2
    return v5
.end method

.method public final zzh(II)F
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzi:Z

    const v1, -0x800001

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzl:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzj:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzk:I

    if-eq v1, p2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzun;->zzg(IID)Z

    move-result v0

    const/high16 v1, 0x44800000    # 1024.0f

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    sub-float v2, v1, v0

    .line 2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    float-to-double v3, v2

    .line 3
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzun;->zzg(IID)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v4, v3, :cond_5

    move v0, v2

    :cond_5
    if-eq v4, v3, :cond_4

    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v0

    .line 1
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzl:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzun;->zzj:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzun;->zzk:I

    return v1
.end method

.method public final zzi(II)Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzun;->zzd:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzun;->zzo(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
