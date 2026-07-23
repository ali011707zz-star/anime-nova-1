.class final Lcom/google/android/gms/internal/ads/zzagx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzagq;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzguf;

.field private final zzb:I


# direct methods
.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzguf;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method

.method public static zzb(ILcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzagx;
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzguc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zze()I

    move-result v1

    const/4 v2, -0x2

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_f

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v5

    add-int/2addr v5, v4

    .line 5
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    const v4, 0x5453494c

    if-ne v3, v4, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v3

    .line 37
    invoke-static {v3, p1}, Lcom/google/android/gms/internal/ads/zzagx;->zzb(ILcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzagx;

    move-result-object v3

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move-object v3, v4

    goto/16 :goto_5

    .line 33
    :sswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagz;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzagz;

    move-result-object v3

    goto/16 :goto_5

    .line 34
    :sswitch_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagv;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzagv;

    move-result-object v3

    goto/16 :goto_5

    .line 35
    :sswitch_2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzagu;->zzb(Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzagu;

    move-result-object v3

    goto/16 :goto_5

    :sswitch_3
    const/4 v3, 0x2

    const-string v6, "StreamFormatChunk"

    if-ne v2, v3, :cond_2

    const/4 v3, 0x4

    .line 6
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v7

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v8

    .line 9
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    move-object v9, v4

    goto :goto_2

    .line 14
    :sswitch_4
    const-string v9, "video/mjpeg"

    goto :goto_2

    :sswitch_5
    const-string v9, "video/mp43"

    goto :goto_2

    :sswitch_6
    const-string v9, "video/mp42"

    goto :goto_2

    :sswitch_7
    const-string v9, "video/avc"

    goto :goto_2

    :sswitch_8
    const-string v9, "video/mp4v-es"

    :goto_2
    if-nez v9, :cond_1

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x2c

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Ignoring track with unsupported compression "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzt;

    .line 12
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 13
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzt(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzt;->zzu(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzagy;

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(Lcom/google/android/gms/internal/ads/zzv;)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v7

    const-string v8, "audio/raw"

    const-string v9, "audio/mp4a-latm"

    if-eq v7, v3, :cond_7

    const/16 v3, 0x55

    if-eq v7, v3, :cond_6

    const/16 v3, 0xff

    if-eq v7, v3, :cond_5

    const/16 v3, 0x2000

    if-eq v7, v3, :cond_4

    const/16 v3, 0x2001

    if-eq v7, v3, :cond_3

    move-object v3, v4

    goto :goto_3

    .line 30
    :cond_3
    const-string v3, "audio/vnd.dts"

    goto :goto_3

    :cond_4
    const-string v3, "audio/ac3"

    goto :goto_3

    :cond_5
    move-object v3, v9

    goto :goto_3

    :cond_6
    const-string v3, "audio/mpeg"

    goto :goto_3

    :cond_7
    move-object v3, v8

    :goto_3
    if-nez v3, :cond_8

    .line 16
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ignoring track with unsupported format tag "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 17
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v4

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzC()I

    move-result v6

    const/4 v7, 0x6

    .line 19
    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v7

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 21
    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzz(ILjava/nio/ByteOrder;)I

    move-result v7

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result v10

    const/4 v11, 0x0

    if-lez v10, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzer;->zzu()I

    move-result v10

    goto :goto_4

    :cond_9
    move v10, v11

    :goto_4
    new-instance v12, Lcom/google/android/gms/internal/ads/zzt;

    .line 23
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzt;-><init>()V

    .line 24
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzt;

    .line 25
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzt;->zzE(I)Lcom/google/android/gms/internal/ads/zzt;

    .line 26
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/ads/zzt;->zzF(I)Lcom/google/android/gms/internal/ads/zzt;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v7, :cond_a

    .line 27
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzt;->zzG(I)Lcom/google/android/gms/internal/ads/zzt;

    :cond_a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-lez v10, :cond_b

    new-array v3, v10, [B

    .line 28
    invoke-virtual {p1, v3, v11, v10}, Lcom/google/android/gms/internal/ads/zzer;->zzm([BII)V

    .line 29
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzguf;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzt;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzt;

    :cond_b
    new-instance v3, Lcom/google/android/gms/internal/ads/zzagy;

    .line 30
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzt;->zzM()Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzagy;-><init>(Lcom/google/android/gms/internal/ads/zzv;)V

    goto :goto_5

    :cond_c
    const-string v3, "Ignoring strf box for unsupported track type: "

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzP(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :goto_5
    if-eqz v3, :cond_e

    .line 37
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzagq;->zza()I

    move-result v4

    const v6, 0x68727473

    if-ne v4, v6, :cond_d

    .line 38
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzagv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzagv;->zzc()I

    move-result v2

    .line 39
    :cond_d
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    .line 40
    :cond_e
    invoke-virtual {p1, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    .line 41
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzer;->zzf(I)V

    goto/16 :goto_0

    .line 34
    :cond_f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzagx;

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzagx;-><init>(ILcom/google/android/gms/internal/ads/zzguf;)V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30355844 -> :sswitch_8
        0x31435641 -> :sswitch_7
        0x31637661 -> :sswitch_7
        0x3234504d -> :sswitch_6
        0x3334504d -> :sswitch_5
        0x34363248 -> :sswitch_7
        0x34504d46 -> :sswitch_8
        0x44495633 -> :sswitch_8
        0x44495658 -> :sswitch_8
        0x47504a4d -> :sswitch_4
        0x58564944 -> :sswitch_8
        0x64697678 -> :sswitch_8
        0x67706a6d -> :sswitch_4
        0x78766964 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzagx;->zzb:I

    return v0
.end method

.method public final zzc(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzagq;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagx;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1
    check-cast v3, Lcom/google/android/gms/internal/ads/zzagq;

    .line 2
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
