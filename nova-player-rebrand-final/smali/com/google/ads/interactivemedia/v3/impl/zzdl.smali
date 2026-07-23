.class public final Lcom/google/ads/interactivemedia/v3/impl/zzdl;
.super Lcom/google/ads/interactivemedia/v3/impl/zzbg;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/StreamManager;


# instance fields
.field private final zza:Ljava/lang/String;

.field private zzb:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzeu;Lcom/google/ads/interactivemedia/v3/api/StreamDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzdo;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Lcom/google/ads/interactivemedia/v3/internal/zzub;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p12

    .line 1
    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/impl/zzbv;Lcom/google/ads/interactivemedia/v3/internal/zzge;Lcom/google/ads/interactivemedia/v3/impl/zzdp;Lcom/google/ads/interactivemedia/v3/api/BaseDisplayContainer;Lcom/google/ads/interactivemedia/v3/impl/zzh;Lcom/google/ads/interactivemedia/v3/impl/zzcu;Lcom/google/ads/interactivemedia/v3/impl/zzbq;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Z)V

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdl;->zzb:Ljava/util/List;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdl;->zza:Ljava/lang/String;

    .line 3
    invoke-virtual/range {p5 .. p5}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzk()V

    return-void
.end method


# virtual methods
.method public final getCuePoints()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdl;->zzb:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getStreamId()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdl;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final replaceAdTagParameters(Ljava/util/Map;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "adTagParameters"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;->replaceAdTagParameters:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;

    .line 4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;->adsManager:Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;

    invoke-virtual {p0, v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzj(Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgChannel;Lcom/google/ads/interactivemedia/v3/impl/JavaScriptMessage$MsgType;Ljava/lang/Object;)V

    return-void
.end method

.method final zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzh()Lcom/google/ads/interactivemedia/v3/impl/zzdp;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/impl/zzdo;

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;->ALL_ADS_COMPLETED:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zza:Lcom/google/ads/interactivemedia/v3/api/AdEvent$AdEventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 9
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzi()V

    goto :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzh()V

    goto :goto_0

    .line 11
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzg()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb()V

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzf()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzb:Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/impl/data/AdImpl;->isLinear()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zze()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zza()V

    goto :goto_0

    .line 2
    :cond_1
    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzh:D

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Seek time when ad is skipped: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMASDK"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzh:D

    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v3

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/impl/zzdo;->zzj(J)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/impl/zzbc;->zzd:Ljava/util/List;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/impl/zzdl;->zzb:Ljava/util/List;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzge;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzge;->zzb()V

    .line 14
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/zzbg;->zzc(Lcom/google/ads/interactivemedia/v3/impl/zzbc;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
