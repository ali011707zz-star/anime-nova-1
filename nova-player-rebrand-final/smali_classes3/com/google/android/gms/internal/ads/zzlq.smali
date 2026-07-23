.class final Lcom/google/android/gms/internal/ads/zzlq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbe;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzmx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdx;

.field private zze:J

.field private zzf:I

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzjg;

.field private zzi:Lcom/google/android/gms/internal/ads/zzln;

.field private zzj:Lcom/google/android/gms/internal/ads/zzln;

.field private zzk:Lcom/google/android/gms/internal/ads/zzln;

.field private zzl:Lcom/google/android/gms/internal/ads/zzln;

.field private zzm:Lcom/google/android/gms/internal/ads/zzln;

.field private zzn:I

.field private zzo:Ljava/lang/Object;

.field private zzp:J

.field private zzq:Ljava/util/List;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzky;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzmx;Lcom/google/android/gms/internal/ads/zzdx;Lcom/google/android/gms/internal/ads/zzky;Lcom/google/android/gms/internal/ads/zzjg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzc:Lcom/google/android/gms/internal/ads/zzmx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzd:Lcom/google/android/gms/internal/ads/zzdx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzr:Lcom/google/android/gms/internal/ads/zzky;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzh:Lcom/google/android/gms/internal/ads/zzjg;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    return-void
.end method

.method private static zzA(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzwk;
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    iget v0, p7, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, p6, v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    .line 4
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzbd;->zzb()I

    .line 5
    invoke-virtual {p0, p1, p7}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-wide v0, p2

    .line 6
    invoke-virtual {p7, v0, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zze(J)I

    move-result p2

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    .line 7
    invoke-virtual {p7, v0, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zzf(J)I

    move-result p0

    new-instance p2, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-direct {p2, p1, p4, p5, p0}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;JI)V

    return-object p2

    .line 8
    :cond_0
    invoke-virtual {p7, p2}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(I)I

    move-result p3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzwk;

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;IIJ)V

    return-object p0
.end method

.method private final zzB()V
    .locals 4

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzguf;->$r8$clinit:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzguc;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzguc;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzguc;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzguc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    .line 3
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzd:Lcom/google/android/gms/internal/ads/zzdx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzlp;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzlp;-><init>(Lcom/google/android/gms/internal/ads/zzlq;Lcom/google/android/gms/internal/ads/zzguc;Lcom/google/android/gms/internal/ads/zzwk;)V

    .line 5
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzdx;->zzn(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzC(Ljava/lang/Object;)J
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzln;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private final zzD(Lcom/google/android/gms/internal/ads/zzbf;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzf:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzg:Z

    move-object v1, p1

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzl(ILcom/google/android/gms/internal/ads/zzbd;Lcom/google/android/gms/internal/ads/zzbe;IZ)I

    move-result v2

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-nez p1, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    .line 5
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzlq;->zzs(Lcom/google/android/gms/internal/ads/zzln;)I

    move-result p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzlq;->zzx(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzlo;)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    return p1
.end method

.method private final zzE(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzln;J)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 1
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzln;->zza()J

    move-result-wide v2

    iget-wide v5, v10, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    add-long/2addr v2, v5

    .line 2
    iget-boolean v4, v10, Lcom/google/android/gms/internal/ads/zzlo;->zzh:Z

    sub-long v7, v2, p3

    const/4 v11, -0x1

    const-wide/16 v2, 0x0

    if-eqz v4, :cond_6

    .line 3
    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    move-wide v5, v2

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v2

    move-wide/from16 v16, v5

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzf:I

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzg:Z

    move-object v3, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    move-wide/from16 v12, v16

    move-object/from16 v14, v18

    const/16 p3, 0x0

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzbf;->zzl(ILcom/google/android/gms/internal/ads/zzbd;Lcom/google/android/gms/internal/ads/zzbe;IZ)I

    move-result v2

    if-ne v2, v11, :cond_0

    return-object p3

    :cond_0
    const/4 v5, 0x1

    .line 5
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v5

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 20
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v14

    .line 5
    iget-wide v14, v15, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    .line 6
    invoke-virtual {v1, v5, v4, v12, v13}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v11

    .line 7
    iget v11, v11, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    if-ne v11, v2, :cond_4

    move-object v2, v4

    move v4, v5

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 9
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzbf;->zzn(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJJ)Landroid/util/Pair;

    move-result-object v4

    if-nez v4, :cond_1

    return-object p3

    .line 10
    :cond_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    .line 12
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    :goto_0
    move-object/from16 v1, p1

    move-object v7, v2

    move-object v8, v3

    move-wide v3, v4

    move-object v2, v6

    move-wide v5, v14

    move-wide/from16 v12, v19

    goto :goto_1

    .line 13
    :cond_2
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzlq;->zzC(Ljava/lang/Object;)J

    move-result-wide v7

    const-wide/16 v11, -0x1

    cmp-long v1, v7, v11

    if-nez v1, :cond_3

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzlq;->zze:J

    const-wide/16 v11, 0x1

    add-long/2addr v11, v7

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzlq;->zze:J

    :cond_3
    move-wide v14, v7

    goto :goto_0

    :cond_4
    move-object/from16 v1, p1

    move-object v8, v3

    move-object v7, v4

    move-object v2, v6

    move-wide v3, v12

    move-wide v5, v14

    .line 15
    :goto_1
    invoke-static/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzlq;->zzA(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v2

    move-wide v5, v3

    move-object v3, v8

    cmp-long v4, v12, v19

    if-eqz v4, :cond_5

    .line 16
    iget-wide v7, v10, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    cmp-long v4, v7, v19

    if-eqz v4, :cond_5

    move-object/from16 v14, v18

    .line 17
    invoke-virtual {v1, v14, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbd;->zzb()I

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    .line 18
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzc;->zzd:I

    :cond_5
    move-wide v3, v12

    .line 19
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzlq;->zzF(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    return-object v1

    :cond_6
    move-wide v12, v2

    const/16 p3, 0x0

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    .line 23
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    .line 24
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbd;->zzg(I)I

    move-result v5

    if-ne v5, v11, :cond_7

    return-object p3

    :cond_7
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    .line 25
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zza;->zza(I)I

    move-result v5

    if-gez v5, :cond_8

    move-object v11, v2

    move v3, v4

    move v4, v5

    .line 26
    iget-wide v5, v10, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzG(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;IIJJZ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    move-object v11, v0

    return-object v1

    :cond_8
    move-object v11, v0

    move-object v14, v2

    move-object v2, v3

    move v15, v4

    .line 27
    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    cmp-long v3, v0, v19

    if-nez v3, :cond_a

    iget-object v1, v11, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move-object/from16 v0, p1

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzn(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;IJJ)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v0

    if-nez v1, :cond_9

    return-object p3

    .line 30
    :cond_9
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide/from16 v5, v19

    goto :goto_2

    :cond_a
    move-object/from16 v2, p1

    move-wide v5, v0

    .line 31
    :goto_2
    invoke-direct {v11, v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzlq;->zzK(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;I)J

    .line 32
    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const/4 v9, 0x0

    move-object v1, v2

    move-object v0, v11

    move-object v2, v14

    .line 33
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzH(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJJZ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    return-object v1

    :cond_b
    move-object v0, v3

    iget v3, v9, Lcom/google/android/gms/internal/ads/zzwk;->zze:I

    if-eq v3, v11, :cond_c

    .line 34
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbd;->zzi(I)Z

    .line 35
    :cond_c
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(I)I

    move-result v4

    .line 36
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbd;->zzk(I)Z

    .line 37
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzbd;->zzg(I)I

    move-result v0

    if-eq v4, v0, :cond_d

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 40
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzG(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;IIJJZ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    return-object v1

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 38
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzlq;->zzK(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;I)J

    iget-wide v7, v9, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const/4 v9, 0x0

    const-wide/16 v3, 0x0

    .line 39
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzH(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJJZ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    return-object v1
.end method

.method private final zzF(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJ)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 10

    .line 1
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzG(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;IIJJZ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p3

    move-wide v3, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzH(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJJZ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    return-object p1
.end method

.method private final zzG(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;IIJJZ)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzwk;

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;IIJ)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    move-object/from16 v15, p0

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    move-object/from16 v5, p1

    .line 2
    invoke-virtual {v5, v1, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbd;->zzh(II)J

    move-result-wide v8

    move/from16 v1, p3

    .line 4
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zzd(I)I

    move-result v1

    move/from16 v3, p4

    if-ne v3, v1, :cond_0

    .line 5
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbd;->zzj()J

    .line 6
    :cond_0
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbd;->zzk(I)Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v8, v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    cmp-long v1, v8, v2

    if-gtz v1, :cond_1

    const-wide/16 v4, -0x1

    add-long/2addr v4, v8

    .line 7
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_1
    move-object v1, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzlo;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v4, p5

    .line 8
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(Lcom/google/android/gms/internal/ads/zzwk;JJJJZZZZZ)V

    return-object v0
.end method

.method private final zzH(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJJZ)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    .line 2
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzbd;->zzf(J)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbd;->zzb()I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzk(I)Z

    .line 3
    :goto_0
    new-instance v9, Lcom/google/android/gms/internal/ads/zzwk;

    move-wide/from16 v10, p7

    .line 5
    invoke-direct {v9, v2, v10, v11, v6}, Lcom/google/android/gms/internal/ads/zzwk;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzL(Lcom/google/android/gms/internal/ads/zzwk;)Z

    move-result v2

    .line 6
    invoke-direct {v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzlq;->zzI(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)Z

    move-result v21

    .line 7
    invoke-direct {v0, v1, v9, v2}, Lcom/google/android/gms/internal/ads/zzlq;->zzJ(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;Z)Z

    move-result v22

    if-eq v6, v7, :cond_1

    .line 8
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzk(I)Z

    :cond_1
    if-eq v6, v7, :cond_2

    .line 9
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzi(I)Z

    :cond_2
    const-wide/16 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v6, v7, :cond_3

    .line 10
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzc(I)J

    move-wide v6, v10

    goto :goto_1

    :cond_3
    move-wide v6, v12

    :goto_1
    cmp-long v1, v6, v12

    if-eqz v1, :cond_4

    move-wide v14, v6

    move-wide/from16 v16, v14

    goto :goto_2

    .line 12
    :cond_4
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    move-wide/from16 v16, v6

    move-wide v14, v12

    :goto_2
    cmp-long v1, v16, v12

    if-eqz v1, :cond_5

    cmp-long v1, v3, v16

    if-ltz v1, :cond_5

    const-wide/16 v3, -0x1

    add-long v3, v16, v3

    .line 11
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_5
    move-wide v10, v3

    new-instance v8, Lcom/google/android/gms/internal/ads/zzlo;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-wide/from16 v12, p5

    move/from16 v20, v2

    .line 12
    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(Lcom/google/android/gms/internal/ads/zzwk;JJJJZZZZZ)V

    return-object v8
.end method

.method private final zzI(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)Z
    .locals 5

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzlq;->zzL(Lcom/google/android/gms/internal/ads/zzwk;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v3, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbe;->zzo:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final zzJ(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;Z)Z
    .locals 6

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    .line 3
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v4, 0x0

    .line 4
    invoke-virtual {p1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbe;->zzi:Z

    if-nez v0, :cond_0

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzf:I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzg:Z

    move-object v0, p1

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzl(ILcom/google/android/gms/internal/ads/zzbd;Lcom/google/android/gms/internal/ads/zzbe;IZ)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2
.end method

.method private final zzK(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;I)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    .line 2
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbd;->zzc(I)J

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbd;->zzg:Lcom/google/android/gms/internal/ads/zzc;

    .line 3
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzc;->zza(I)Lcom/google/android/gms/internal/ads/zza;

    move-result-object p1

    iget-wide p1, p1, Lcom/google/android/gms/internal/ads/zza;->zzi:J

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private static final zzL(Lcom/google/android/gms/internal/ads/zzwk;)Z
    .locals 1

    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzwk;->zze:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbf;I)I
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzf:I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzlq;->zzD(Lcom/google/android/gms/internal/ads/zzbf;)I

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbf;Z)I
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzg:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzlq;->zzD(Lcom/google/android/gms/internal/ads/zzbf;)I

    move-result p1

    return p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzjg;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzh:Lcom/google/android/gms/internal/ads/zzjg;

    iget-wide p1, p2, Lcom/google/android/gms/internal/ads/zzjg;->zzb:J

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzj()V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwi;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzwi;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzf(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzln;->zzi(J)V

    :cond_0
    return-void
.end method

.method public final zzg()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzlo;->zzj:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public final zzh(JLcom/google/android/gms/internal/ads/zzmd;)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    if-nez v0, :cond_0

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzb:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v4, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzc:J

    iget-wide v6, p3, Lcom/google/android/gms/internal/ads/zzmd;->zzs:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzlq;->zzF(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;JJ)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v1, p0

    .line 2
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzmd;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzlq;->zzE(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzln;J)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzlo;)Lcom/google/android/gms/internal/ads/zzln;
    .locals 11

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zza()J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 1
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    add-long/2addr v1, v3

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    sub-long/2addr v1, v3

    move-wide v0, v1

    :goto_0
    const/4 v2, 0x0

    .line 2
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzln;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 4
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v5, v9

    if-eqz v9, :cond_1

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    :cond_1
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    .line 5
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzwk;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 6
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzln;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_2
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzr:Lcom/google/android/gms/internal/ads/zzky;

    .line 7
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzky;->zza(Lcom/google/android/gms/internal/ads/zzlo;J)Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v2

    goto :goto_3

    .line 10
    :cond_4
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 8
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzln;->zzb(J)V

    .line 7
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzln;->zzo(Lcom/google/android/gms/internal/ads/zzln;)V

    goto :goto_4

    .line 10
    :cond_5
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    .line 9
    :goto_4
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzo:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzB()V

    return-object v2
.end method

.method public final zzj()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzln;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzln;->zzn()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzt()V

    :cond_1
    return-void
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzln;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzln;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/internal/ads/zzln;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    if-ne v0, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    if-ne v0, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzn()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzo:Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzp:J

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzB()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    return-object v0
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzln;)I
    .locals 2

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    const/4 v1, 0x3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzln;->zzn()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzln;->zzo(Lcom/google/android/gms/internal/ads/zzln;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzB()V

    return v1
.end method

.method public final zzt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzln;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzln;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzm:Lcom/google/android/gms/internal/ads/zzln;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzwi;)Lcom/google/android/gms/internal/ads/zzln;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzq:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzln;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzln;->zza:Lcom/google/android/gms/internal/ads/zzwi;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzv()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzo:Ljava/lang/Object;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzp:J

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzn()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzl:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzn:I

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzlq;->zzB()V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzbf;JJJ)I
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lcom/google/android/gms/internal/ads/zzlq;->zzx(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzlo;)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v1

    move-wide v4, p2

    goto :goto_1

    :cond_0
    move-wide v4, p2

    .line 2
    invoke-direct {p0, p1, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzlq;->zzE(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzln;J)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 3
    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide v9, v6, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_c

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzwk;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    move-object v1, v6

    .line 4
    :goto_1
    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    .line 5
    invoke-virtual {v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzlo;->zzb(J)Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 6
    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzlo;->zze:J

    cmp-long v1, v6, v8

    if-eqz v1, :cond_b

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzs()V

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v8, v3

    if-nez p1, :cond_1

    const-wide v8, 0x7fffffffffffffffL

    goto :goto_2

    .line 11
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zza()J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 8
    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzj:Lcom/google/android/gms/internal/ads/zzln;

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v1, 0x1

    if-ne v0, p1, :cond_3

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 9
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzlo;->zzg:Z

    cmp-long p1, p4, v10

    if-eqz p1, :cond_2

    cmp-long p1, p4, v8

    if-ltz p1, :cond_3

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    move p1, v2

    :goto_3
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzk:Lcom/google/android/gms/internal/ads/zzln;

    if-ne v0, v5, :cond_5

    cmp-long v5, p6, v10

    if-eqz v5, :cond_4

    cmp-long v5, p6, v8

    if-ltz v5, :cond_5

    :cond_4
    move v5, v1

    goto :goto_4

    :cond_5
    move v5, v2

    .line 10
    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzlq;->zzs(Lcom/google/android/gms/internal/ads/zzln;)I

    move-result v0

    if-eqz v0, :cond_6

    return v0

    :cond_6
    cmp-long v0, v6, v3

    if-nez v0, :cond_7

    move-wide v6, v3

    :cond_7
    if-eqz p1, :cond_9

    cmp-long p1, v6, v3

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v1

    :cond_9
    :goto_5
    if-eqz v5, :cond_a

    or-int/lit8 p1, v2, 0x2

    return p1

    :cond_a
    return v2

    .line 11
    :cond_b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto/16 :goto_0

    .line 7
    :cond_c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzlq;->zzs(Lcom/google/android/gms/internal/ads/zzln;)I

    move-result p1

    return p1

    :cond_d
    return v2
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzlo;)Lcom/google/android/gms/internal/ads/zzlo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzlq;->zzL(Lcom/google/android/gms/internal/ads/zzwk;)Z

    move-result v13

    .line 2
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzlq;->zzI(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;)Z

    move-result v14

    .line 3
    invoke-direct {v0, v1, v3, v13}, Lcom/google/android/gms/internal/ads/zzlq;->zzJ(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzwk;Z)Z

    move-result v15

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzwk;->zza:Ljava/lang/Object;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 4
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v1

    const/4 v4, -0x1

    const-wide/16 v6, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzwk;->zze:I

    if-ne v1, v4, :cond_1

    :cond_0
    move-wide v10, v8

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zzc(I)J

    move-wide v10, v6

    .line 4
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzwk;->zzc:I

    .line 6
    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/internal/ads/zzbd;->zzh(II)J

    move-result-wide v6

    :goto_1
    move-wide/from16 v16, v10

    move-wide v9, v6

    move-wide/from16 v7, v16

    goto :goto_2

    :cond_2
    cmp-long v1, v10, v8

    if-eqz v1, :cond_3

    move-wide v9, v6

    move-wide v7, v9

    goto :goto_2

    .line 8
    :cond_3
    iget-wide v6, v5, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    goto :goto_1

    .line 6
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwk;->zzb()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v3, Lcom/google/android/gms/internal/ads/zzwk;->zzb:I

    .line 7
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zzk(I)Z

    goto :goto_3

    .line 9
    :cond_4
    iget v1, v3, Lcom/google/android/gms/internal/ads/zzwk;->zze:I

    if-eq v1, v4, :cond_5

    .line 8
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzbd;->zzk(I)Z

    .line 7
    :cond_5
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzlo;

    move-object v5, v3

    .line 9
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzlo;->zzb:J

    iget-wide v11, v2, Lcom/google/android/gms/internal/ads/zzlo;->zzc:J

    move-object v2, v5

    move-wide v5, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzlo;-><init>(Lcom/google/android/gms/internal/ads/zzwk;JJJJZZZZZ)V

    return-object v1
.end method

.method public final zzy(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzwk;
    .locals 9

    .line 1
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzlq;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzo:Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v8, -0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v8, :cond_1

    .line 3
    invoke-virtual {p1, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v1

    .line 4
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    if-ne v1, v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzp:J

    :cond_0
    :goto_0
    move-wide v4, v0

    goto :goto_3

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    .line 5
    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    :goto_2
    if-eqz v1, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzln;->zzb:Ljava/lang/Object;

    .line 7
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v8, :cond_4

    .line 8
    invoke-virtual {p1, v3, v7, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v3

    .line 9
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    if-ne v3, v0, :cond_4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzln;->zzg:Lcom/google/android/gms/internal/ads/zzlo;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzwk;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzwk;->zzd:J

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzln;->zzp()Lcom/google/android/gms/internal/ads/zzln;

    move-result-object v1

    goto :goto_2

    .line 11
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzlq;->zzC(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zze:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zze:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzi:Lcom/google/android/gms/internal/ads/zzln;

    if-nez v2, :cond_0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzo:Ljava/lang/Object;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzp:J

    goto :goto_0

    .line 12
    :goto_3
    invoke-virtual {p1, p2, v7}, Lcom/google/android/gms/internal/ads/zzbf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzbd;

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzbd;->zzc:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzb:Lcom/google/android/gms/internal/ads/zzbe;

    const-wide/16 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v6, v1, v2}, Lcom/google/android/gms/internal/ads/zzbf;->zzb(ILcom/google/android/gms/internal/ads/zzbe;J)Lcom/google/android/gms/internal/ads/zzbe;

    .line 14
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zze(Ljava/lang/Object;)I

    move-result v0

    move-object v1, p2

    :goto_4
    iget p2, v6, Lcom/google/android/gms/internal/ads/zzbe;->zzn:I

    if-lt v0, p2, :cond_8

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, v0, v7, p2}, Lcom/google/android/gms/internal/ads/zzbf;->zzd(ILcom/google/android/gms/internal/ads/zzbd;Z)Lcom/google/android/gms/internal/ads/zzbd;

    .line 16
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbd;->zzb()I

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzbd;->zzd:J

    .line 17
    invoke-virtual {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzbd;->zze(J)I

    move-result p2

    if-eq p2, v8, :cond_7

    iget-object p2, v7, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_8
    move-object v0, p1

    move-wide v2, p3

    .line 18
    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzlq;->zzA(Lcom/google/android/gms/internal/ads/zzbf;Ljava/lang/Object;JJLcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzz(Lcom/google/android/gms/internal/ads/zzguc;Lcom/google/android/gms/internal/ads/zzwk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzlq;->zzc:Lcom/google/android/gms/internal/ads/zzmx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzguc;->zzi()Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmx;->zzz(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzwk;)V

    return-void
.end method
