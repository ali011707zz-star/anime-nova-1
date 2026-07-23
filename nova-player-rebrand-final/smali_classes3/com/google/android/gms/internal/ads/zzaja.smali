.class final Lcom/google/android/gms/internal/ads/zzaja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/util/ArrayDeque;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzajj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzajb;

.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zza:[B

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Ljava/util/ArrayDeque;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzajj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzc:Lcom/google/android/gms/internal/ads/zzajj;

    return-void
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzaev;I)J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zza:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 2
    aget-byte p1, v0, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzajb;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzajb;

    return-void
.end method

.method public final zzb()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzc:Lcom/google/android/gms/internal/ads/zzajj;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzajj;->zza()V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzajb;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzb:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaiz;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaiz;->zzb()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzajb;

    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaiz;->zza()I

    move-result v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 28
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzajh;->zzi(I)V

    return v2

    .line 1
    :cond_1
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzc:Lcom/google/android/gms/internal/ads/zzajj;

    .line 2
    invoke-virtual {v1, p1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzajj;->zzb(Lcom/google/android/gms/internal/ads/zzaev;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zza:[B

    .line 4
    invoke-interface {p1, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    aget-byte v5, v1, v4

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzajj;->zzd(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    if-gt v5, v3, :cond_3

    .line 6
    invoke-static {v1, v5, v4}, Lcom/google/android/gms/internal/ads/zzajj;->zze([BIZ)J

    move-result-wide v6

    long-to-int v1, v6

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzajb;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    const v6, 0x1549a966

    if-eq v1, v6, :cond_2

    const v6, 0x1f43b675

    if-eq v1, v6, :cond_2

    const v6, 0x1c53bb6b

    if-eq v1, v6, :cond_2

    const v6, 0x1654ae6b

    if-ne v1, v6, :cond_3

    move v1, v6

    .line 8
    :cond_2
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    int-to-long v5, v1

    goto :goto_3

    .line 7
    :cond_3
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    goto :goto_2

    :cond_4
    :goto_3
    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_5

    return v4

    :cond_5
    long-to-int v1, v5

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzf:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    goto :goto_4

    :cond_6
    if-ne v1, v2, :cond_7

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzc:Lcom/google/android/gms/internal/ads/zzajj;

    const/16 v5, 0x8

    .line 9
    invoke-virtual {v1, p1, v4, v2, v5}, Lcom/google/android/gms/internal/ads/zzajj;->zzb(Lcom/google/android/gms/internal/ads/zzaev;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzajb;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzf:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    const-wide/16 v6, 0x8

    const/4 v8, 0x0

    sparse-switch v5, :sswitch_data_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    long-to-int v0, v0

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    goto/16 :goto_0

    :sswitch_0
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    const-wide/16 v11, 0x4

    cmp-long v0, v9, v11

    if-eqz v0, :cond_9

    cmp-long v0, v9, v6

    if-nez v0, :cond_8

    goto :goto_5

    .line 15
    :cond_8
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x14

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid float size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :cond_9
    :goto_5
    long-to-int v0, v9

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaja;->zzd(Lcom/google/android/gms/internal/ads/zzaev;I)J

    move-result-wide v6

    if-ne v0, v3, :cond_a

    long-to-int p1, v6

    .line 12
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v6, p1

    goto :goto_6

    .line 13
    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 14
    :goto_6
    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzajh;->zzk(ID)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    return v2

    .line 13
    :sswitch_1
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    long-to-int v0, v6

    .line 16
    invoke-virtual {v1, v5, v0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzm(IILcom/google/android/gms/internal/ads/zzaev;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    return v2

    :sswitch_2
    move-object v3, v8

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v8

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    add-long/2addr v6, v8

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaiz;

    invoke-direct {p1, v5, v6, v7, v3}, Lcom/google/android/gms/internal/ads/zzaiz;-><init>(IJ[B)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzd:Lcom/google/android/gms/internal/ads/zzajb;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzf:I

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    check-cast p1, Lcom/google/android/gms/internal/ads/zzajc;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzajc;->zza:Lcom/google/android/gms/internal/ads/zzajh;

    .line 18
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzajh;->zzh(IJJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    return v2

    :sswitch_3
    move-object v3, v8

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    const-wide/32 v8, 0x7fffffff

    cmp-long v0, v6, v8

    if-gtz v0, :cond_d

    long-to-int v0, v6

    if-nez v0, :cond_b

    .line 19
    const-string p1, ""

    goto :goto_8

    .line 20
    :cond_b
    new-array v3, v0, [B

    .line 21
    invoke-interface {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzaev;->zzc([BII)V

    :goto_7
    if-lez v0, :cond_c

    add-int/lit8 p1, v0, -0x1

    .line 22
    aget-byte v6, v3, p1

    if-nez v6, :cond_c

    move v0, p1

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    .line 23
    :goto_8
    invoke-virtual {v1, v5, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzl(ILjava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    return v2

    .line 19
    :cond_d
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x15

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "String element size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    :sswitch_4
    move-object v3, v8

    .line 22
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzaja;->zzg:J

    cmp-long v0, v8, v6

    if-gtz v0, :cond_e

    long-to-int v0, v8

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaja;->zzd(Lcom/google/android/gms/internal/ads/zzaev;I)J

    move-result-wide v6

    .line 26
    invoke-virtual {v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzajh;->zzj(IJ)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaja;->zze:I

    return v2

    .line 24
    :cond_e
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x16

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid integer size: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object p1

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf0 -> :sswitch_4
        0xf1 -> :sswitch_4
        0xf7 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b2 -> :sswitch_4
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method
