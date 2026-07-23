.class public final Lcom/google/android/gms/internal/ads/zzaqk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaeu;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzb:Lcom/google/android/gms/internal/ads/zzagh;

.field private zzc:I

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzaqh;

.field private zzf:I

.field private zzg:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zzd:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zzf:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zzg:J

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzaev;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaqn;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result p1

    return p1
.end method

.method public synthetic zzb()Ljava/util/List;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzb(Lcom/google/android/gms/internal/ads/zzaeu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzaex;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzafv;)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_f

    const/4 v7, 0x2

    const-wide/16 v8, -0x1

    if-eq v2, v5, :cond_d

    const/4 v10, 0x3

    if-eq v2, v7, :cond_5

    if-eq v2, v10, :cond_2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzg:J

    cmp-long v2, v10, v8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 29
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzg:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v7

    sub-long/2addr v4, v7

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-interface {v2, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaqh;->zzc(Lcom/google/android/gms/internal/ads/zzaev;J)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    return v6

    .line 23
    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaqn;->zzc(Lcom/google/android/gms/internal/ads/zzaev;)Landroid/util/Pair;

    move-result-object v2

    .line 24
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzf:I

    .line 25
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzd:J

    cmp-long v5, v10, v8

    if-eqz v5, :cond_3

    const-wide v12, 0xffffffffL

    cmp-long v5, v2, v12

    if-nez v5, :cond_3

    move-wide v2, v10

    :cond_3
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzf:I

    int-to-long v10, v5

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzg:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzo()J

    move-result-wide v1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_4

    cmp-long v3, v10, v1

    if-lez v3, :cond_4

    .line 26
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/2addr v3, v5

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Data exceeds input length: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WavExtractor"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzg:J

    move-wide v10, v1

    :cond_4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzf:I

    invoke-interface {v1, v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzaqh;->zzb(IJ)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    return v6

    .line 16
    :cond_5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaqn;->zzb(Lcom/google/android/gms/internal/ads/zzaev;)Lcom/google/android/gms/internal/ads/zzaql;

    move-result-object v15

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzaql;->zza:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_6

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqg;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    invoke-direct {v1, v2, v3, v15}, Lcom/google/android/gms/internal/ads/zzaqg;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzaql;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    goto :goto_3

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaqi;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const-string v16, "audio/g711-alaw"

    const/16 v17, -0x1

    .line 18
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzaql;Ljava/lang/String;I)V

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    goto :goto_3

    :cond_7
    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    new-instance v12, Lcom/google/android/gms/internal/ads/zzaqi;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const-string v16, "audio/g711-mlaw"

    const/16 v17, -0x1

    .line 19
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzaql;Ljava/lang/String;I)V

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    goto :goto_3

    :cond_8
    iget v2, v15, Lcom/google/android/gms/internal/ads/zzaql;->zze:I

    if-eq v1, v5, :cond_b

    if-eq v1, v10, :cond_a

    const v3, 0xfffe

    if-eq v1, v3, :cond_b

    :cond_9
    move/from16 v17, v6

    goto :goto_2

    :cond_a
    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    :goto_1
    move/from16 v17, v4

    goto :goto_2

    .line 22
    :cond_b
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 20
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzz(ILjava/nio/ByteOrder;)I

    move-result v4

    goto :goto_1

    :goto_2
    if-eqz v17, :cond_c

    .line 21
    new-instance v12, Lcom/google/android/gms/internal/ads/zzaqi;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zza:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzb:Lcom/google/android/gms/internal/ads/zzagh;

    const-string v16, "audio/raw"

    .line 22
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzaqi;-><init>(Lcom/google/android/gms/internal/ads/zzaex;Lcom/google/android/gms/internal/ads/zzagh;Lcom/google/android/gms/internal/ads/zzaql;Ljava/lang/String;I)V

    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    .line 17
    :goto_3
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    return v6

    .line 21
    :cond_c
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1d

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unsupported WAV format type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzat;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1

    .line 7
    :cond_d
    sget v2, Lcom/google/android/gms/internal/ads/zzaqn;->$r8$clinit:I

    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/zzer;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzer;-><init>(I)V

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Lcom/google/android/gms/internal/ads/zzaev;Lcom/google/android/gms/internal/ads/zzer;)Lcom/google/android/gms/internal/ads/zzaqm;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzaqm;->zza:I

    const v10, 0x64733634

    if-eq v5, v10, :cond_e

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzl()V

    goto :goto_4

    .line 11
    :cond_e
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzk(I)V

    .line 12
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v5

    .line 13
    invoke-interface {v1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzaev;->zzi([BII)V

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzer;->zzE()J

    move-result-wide v8

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzaqm;->zzb:J

    long-to-int v2, v4

    add-int/2addr v2, v3

    .line 15
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    .line 10
    :goto_4
    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzd:J

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    return v6

    .line 30
    :cond_f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-nez v2, :cond_10

    move v2, v5

    goto :goto_5

    :cond_10
    move v2, v6

    .line 2
    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzf:I

    if-eq v2, v3, :cond_11

    .line 3
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    goto :goto_6

    .line 4
    :cond_11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaqn;->zza(Lcom/google/android/gms/internal/ads/zzaev;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzm()J

    move-result-wide v2

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaev;->zzn()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    .line 6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzaev;->zzf(I)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    :goto_6
    return v6

    .line 4
    :cond_12
    const-string v1, "Unsupported or unrecognized wav file type."

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzat;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzat;

    move-result-object v1

    throw v1
.end method

.method public final zze(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zzc:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqk;->zze:Lcom/google/android/gms/internal/ads/zzaqh;

    if-eqz p1, :cond_1

    invoke-interface {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzaqh;->zza(J)V

    :cond_1
    return-void
.end method

.method public final zzf()V
    .locals 0

    .line 0
    return-void
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/ads/zzaeu;
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaeu$-CC;->$default$zzg(Lcom/google/android/gms/internal/ads/zzaeu;)Lcom/google/android/gms/internal/ads/zzaeu;

    move-result-object v0

    return-object v0
.end method
