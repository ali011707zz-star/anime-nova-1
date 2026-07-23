.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdye;

.field private final zzc:Z

.field private final zzd:I

.field private final zze:J

.field private final zzf:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;ZILjava/lang/Boolean;Lcom/google/android/gms/internal/ads/zzdye;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    iput-boolean p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Z

    iput p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzd:I

    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzf:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zze:J

    return-void
.end method

.method private static zza()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbjj;->zzh:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzb()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zze:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Landroid/util/Pair;

    const-string v2, "sgf_reason"

    move-object/from16 v5, p1

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const-string v3, "se"

    const-string v4, "query_g"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 2
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const-string v6, "ad_format"

    invoke-direct {v3, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const/4 v6, 0x6

    .line 3
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "rtype"

    invoke-direct {v4, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v8, "scar"

    const-string v9, "true"

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lat_ms"

    invoke-direct {v8, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    move-object v10, v8

    iget v8, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzd:I

    const-string v11, "sgpc_rn"

    .line 5
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    iget-object v12, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzf:Ljava/lang/Boolean;

    const-string v13, "sgpc_lsu"

    .line 6
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v12, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Z

    new-instance v13, Landroid/util/Pair;

    const/4 v14, 0x1

    if-eq v14, v12, :cond_0

    const-string v15, "0"

    :goto_0
    move/from16 v16, v6

    goto :goto_1

    .line 9
    :cond_0
    const-string v15, "1"

    goto :goto_0

    .line 6
    :goto_1
    const-string v6, "tpc"

    .line 7
    invoke-direct {v13, v6, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v6, 0x9

    new-array v6, v6, [Landroid/util/Pair;

    const/4 v15, 0x0

    aput-object v1, v6, v15

    aput-object v2, v6, v14

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v4, v6, v1

    const/4 v1, 0x4

    aput-object v7, v6, v1

    const/4 v1, 0x5

    aput-object v10, v6, v1

    aput-object v9, v6, v16

    const/4 v1, 0x7

    aput-object v11, v6, v1

    const/16 v1, 0x8

    aput-object v13, v6, v1

    iget-object v1, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    const/4 v2, 0x0

    const-string v3, "sgpcf"

    .line 1
    invoke-static {v1, v2, v3, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zze(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V

    new-instance v3, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    const/4 v4, 0x0

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza()J

    move-result-wide v6

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;JI)V

    iget-object v1, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    .line 9
    invoke-virtual {v1, v12, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zzc(ZLcom/google/android/gms/ads/nonagon/signalgeneration/zzq;)V

    return-void
.end method

.method public final onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 14

    .line 1
    new-instance v0, Landroid/util/Pair;

    const-string v1, "se"

    const-string v2, "query_g"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 2
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_format"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x6

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rtype"

    invoke-direct {v2, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "scar"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lat_ms"

    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    iget v12, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzd:I

    const-string v7, "sgpc_rn"

    .line 5
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    iget-object v8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzf:Ljava/lang/Boolean;

    const-string v9, "sgpc_lsu"

    .line 6
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v13, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Z

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x1

    if-eq v9, v13, :cond_0

    const-string v10, "0"

    goto :goto_0

    .line 9
    :cond_0
    const-string v10, "1"

    .line 6
    :goto_0
    const-string v11, "tpc"

    .line 7
    invoke-direct {v8, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0x8

    new-array v10, v10, [Landroid/util/Pair;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    aput-object v1, v10, v9

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v4, v10, v0

    const/4 v0, 0x4

    aput-object v5, v10, v0

    const/4 v0, 0x5

    aput-object v6, v10, v0

    aput-object v7, v10, v3

    const/4 v0, 0x7

    aput-object v8, v10, v0

    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    const/4 v1, 0x0

    const-string v2, "sgpcs"

    .line 1
    invoke-static {v0, v1, v2, v10}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zze(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V

    new-instance v7, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    const-string v9, ""

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza()J

    move-result-wide v10

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;JI)V

    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    .line 9
    invoke-virtual {p1, v13, v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zzc(ZLcom/google/android/gms/ads/nonagon/signalgeneration/zzq;)V

    return-void
.end method
