.class public final Lcom/google/android/gms/internal/ads/zzfqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzenr;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfjd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfje;

.field private final zzh:Lcom/google/android/gms/common/util/Clock;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzazh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzenr;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfjd;Lcom/google/android/gms/internal/ads/zzfje;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzazh;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zza:Lcom/google/android/gms/internal/ads/zzenr;

    iget-object p1, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zze:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzf:Lcom/google/android/gms/internal/ads/zzfjd;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzg:Lcom/google/android/gms/internal/ads/zzfje;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzh:Lcom/google/android/gms/common/util/Clock;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzi:Lcom/google/android/gms/internal/ads/zzazh;

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p2, ""

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfjd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zza:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqg;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzfjd;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjd;->zzb:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfqg;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzj()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "fakeForAdDebugLog"

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;Ljava/util/List;)Ljava/util/List;
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 1
    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfqg;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzczz;Lcom/google/android/gms/internal/ads/zzcdv;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzczz;Lcom/google/android/gms/internal/ads/zzcdv;)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p8

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "1"

    const-string v6, "0"

    const/4 v7, 0x1

    move/from16 v8, p3

    if-eq v7, v8, :cond_0

    move-object v9, v6

    goto :goto_1

    :cond_0
    move-object v9, v5

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v11, p1

    .line 3
    iget-object v12, v11, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    const-string v13, "@gw_adlocid@"

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    invoke-static {v10, v13, v12}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "@gw_adnetrefresh@"

    .line 4
    invoke-static {v10, v12, v9}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzfqg;->zzb:Ljava/lang/String;

    const-string v12, "@gw_sdkver@"

    .line 5
    invoke-static {v9, v12, v10}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    if-eqz v1, :cond_6

    const-string v12, "@gw_qdata@"

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzy:Ljava/lang/String;

    .line 6
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "@gw_adnetid@"

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzx:Ljava/lang/String;

    .line 7
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, "@gw_allocid@"

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzw:Ljava/lang/String;

    .line 8
    invoke-static {v9, v12, v13}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzfqg;->zze:Landroid/content/Context;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzaw:Ljava/util/Map;

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzW:Z

    .line 9
    invoke-static {v9, v12, v14, v13}, Lcom/google/android/gms/internal/ads/zzccs;->zza(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 10
    sget-object v13, Lcom/google/android/gms/internal/ads/zzbhe;->zzoY:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v13

    .line 10
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzfir;->zze:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_2

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v12}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Z

    move-result v12

    if-eq v7, v12, :cond_1

    move-object v5, v6

    :cond_1
    const-string v6, "@gw_aps@"

    .line 13
    invoke-static {v9, v6, v5}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :cond_2
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzpj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 15
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzcdv;->zza:I

    if-ltz v5, :cond_3

    .line 16
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    move-object v5, v10

    :goto_2
    const-string v6, "@gw_is@"

    .line 17
    invoke-static {v9, v6, v5}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzcdv;->zzb:I

    if-ltz v6, :cond_4

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    move-object v6, v10

    :goto_3
    const-string v9, "@gw_fis@"

    .line 19
    invoke-static {v5, v9, v6}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzcdv;->zzc:I

    if-ltz v6, :cond_5

    .line 20
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    move-object v6, v10

    :goto_4
    const-string v9, "@gw_sfis@"

    .line 21
    invoke-static {v5, v9, v6}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_6
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfqg;->zza:Lcom/google/android/gms/internal/ads/zzenr;

    const-string v6, "@gw_adnetstatus@"

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzenr;->zzg()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v6, v12}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzenr;->zzh()J

    move-result-wide v12

    const/16 v5, 0xa

    invoke-static {v12, v13, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v9

    const-string v12, "@gw_ttr@"

    .line 24
    invoke-static {v6, v12, v9}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfqg;->zzc:Ljava/lang/String;

    const-string v12, "@gw_seqnum@"

    .line 25
    invoke-static {v6, v12, v9}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfqg;->zzd:Ljava/lang/String;

    const-string v12, "@gw_sessid@"

    .line 26
    invoke-static {v6, v12, v9}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 27
    sget-object v9, Lcom/google/android/gms/internal/ads/zzbhe;->zzph:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 28
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v9

    .line 27
    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "@gw_placement_id@"

    if-eqz p7, :cond_7

    .line 29
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_7

    .line 31
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzczz;->zza()J

    move-result-wide v12

    invoke-static {v12, v13, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    .line 32
    invoke-static {v6, v9, v5}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 30
    :cond_7
    invoke-static {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    :cond_8
    :goto_5
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzes:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 34
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v9, 0x0

    if-eqz v5, :cond_9

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    move v9, v7

    .line 35
    :cond_9
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v10, v5, 0x1

    if-nez v9, :cond_b

    if-nez v5, :cond_a

    goto :goto_6

    :cond_a
    move-object/from16 v9, p4

    move-object/from16 v7, p5

    goto :goto_9

    :cond_b
    move v7, v10

    .line 36
    :goto_6
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzfqg;->zzi:Lcom/google/android/gms/internal/ads/zzazh;

    .line 37
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzazh;->zza(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 38
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    if-eqz v9, :cond_c

    const-string v6, "ms"

    move-object/from16 v9, p4

    .line 39
    invoke-virtual {v5, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    goto :goto_7

    :cond_c
    move-object/from16 v9, p4

    :goto_7
    if-eqz v7, :cond_d

    const-string v6, "attok"

    move-object/from16 v7, p5

    .line 40
    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    goto :goto_8

    :cond_d
    move-object/from16 v7, p5

    .line 41
    :goto_8
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42
    :goto_9
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-object v3
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfir;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcag;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcag;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcag;->zzc()I

    move-result p3

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbhe;->zzet:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzg:Lcom/google/android/gms/internal/ads/zzfje;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgra;->zzc()Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v4

    goto :goto_1

    .line 20
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfje;->zza:Lcom/google/android/gms/internal/ads/zzfjd;

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgra;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzf:Lcom/google/android/gms/internal/ads/zzfjd;

    goto :goto_0

    .line 6
    :goto_1
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfqf;->zza:Lcom/google/android/gms/internal/ads/zzfqf;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzgra;->zzb(Lcom/google/android/gms/internal/ads/zzgqt;)Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzgra;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfqe;->zza:Lcom/google/android/gms/internal/ads/zzfqe;

    .line 10
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzgra;->zzb(Lcom/google/android/gms/internal/ads/zzgqt;)Lcom/google/android/gms/internal/ads/zzgra;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzgra;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_userid@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_custom_data@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_tmstmp@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_itm@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_amt@"

    .line 17
    invoke-static {v6, v7, p3}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zzb:Ljava/lang/String;

    const-string v8, "@gw_sdkver@"

    .line 18
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfqg;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfqg;->zze:Landroid/content/Context;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzW:Z

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzfir;->zzaw:Ljava/util/Map;

    .line 19
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzccs;->zza(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p2, "Unable to determine award type and amount."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
