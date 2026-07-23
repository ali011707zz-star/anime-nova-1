.class public final Lcom/google/android/gms/internal/ads/zzfiu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:Ljava/lang/String;

.field public final zzc:I

.field public final zzd:I

.field public final zze:Ljava/lang/String;

.field public final zzf:I

.field public final zzg:J

.field public final zzh:Z

.field public final zzi:Ljava/lang/String;

.field public final zzj:Lcom/google/android/gms/internal/ads/zzfit;

.field public final zzk:Landroid/os/Bundle;

.field public final zzl:Ljava/lang/String;

.field public final zzm:Ljava/lang/String;

.field public final zzn:Ljava/lang/String;

.field public final zzo:Lorg/json/JSONObject;

.field public final zzp:Lorg/json/JSONObject;

.field public final zzq:Ljava/lang/String;

.field public final zzr:I

.field public zzs:J

.field public zzt:J


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 34

    move-object/from16 v0, p0

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v2, Landroid/os/Bundle;

    .line 2
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    .line 4
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v8

    move-object v6, v5

    move-object v14, v6

    move-object v15, v14

    move v11, v9

    move v12, v11

    move/from16 v20, v12

    move-object/from16 v21, v10

    const-wide/16 v16, -0x1

    const-wide/16 v18, 0x0

    const-wide/16 v22, -0x1

    const-wide/16 v24, -0x1

    const-wide/16 v26, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x1

    move-object v9, v15

    move-object v10, v9

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v13

    const-string v7, "nofill_urls"

    .line 8
    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzb(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v7, "refresh_interval"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    move v11, v7

    goto :goto_0

    :cond_1
    const-string v7, "refresh_load_delay_time_interval"

    .line 11
    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v28

    goto :goto_0

    :cond_2
    const-string v7, "gws_query_id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_0

    :cond_3
    const-string v7, "analytics_query_ad_event_id"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 14
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    goto :goto_0

    :cond_4
    const-string v7, "is_idless"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    move/from16 v20, v7

    goto :goto_0

    :cond_5
    const-string v7, "response_code"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 16
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v7

    move v12, v7

    goto :goto_0

    :cond_6
    const-string v7, "latency"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v26

    goto :goto_0

    .line 18
    :cond_7
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbhe;->zzjD:Lcom/google/android/gms/internal/ads/zzbgv;

    move-object/from16 v31, v6

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 18
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "public_error"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v6

    sget-object v7, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v6, v7, :cond_9

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfit;

    move-object/from16 v7, p1

    .line 61
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/zzfit;-><init>(Landroid/util/JsonReader;)V

    move-object/from16 v21, v6

    :catch_0
    :cond_8
    :goto_1
    move-object/from16 v6, v31

    goto/16 :goto_0

    :cond_9
    move-object/from16 v7, p1

    const-string v6, "bidding_data"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 21
    invoke-virtual {v7}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    goto :goto_1

    :cond_a
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzlR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "topics_should_record_observation"

    .line 24
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    goto :goto_1

    :cond_b
    const-string v6, "adapter_response_replacement_key"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_c
    const-string v6, "response_info_extras"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzhI:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 27
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 28
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzd(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzl(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_8

    move-object v2, v6

    goto :goto_1

    .line 29
    :catch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 30
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    :cond_e
    const-string v6, "adRequestPostBody"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzkJ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 32
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto/16 :goto_1

    .line 34
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_10
    const-string v6, "adRequestUrl"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzkJ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 35
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 36
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    goto/16 :goto_1

    .line 38
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_12
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzkK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 39
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v7

    .line 40
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "adResponseBody"

    invoke-static {v13, v7}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 41
    :cond_13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "adResponseHeaders"

    .line 43
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzd(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v3

    goto/16 :goto_1

    :cond_14
    const-string v6, "max_parallel_renderers"

    .line 44
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v29

    goto/16 :goto_1

    :cond_15
    const/4 v7, 0x1

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzkS:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 47
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "inspector_ad_transaction_extras"

    .line 48
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzd(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v4

    goto/16 :goto_1

    :cond_16
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbhe;->zzcL:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 49
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v6

    .line 50
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "latency_extras"

    .line 51
    invoke-static {v13, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 53
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzd(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzbp;->zzl(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v7, "start_time"

    .line 54
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/google/android/gms/internal/ads/zzfiu;->zza(D)J

    move-result-wide v24

    const-string v7, "end_time"

    .line 55
    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfiu;->zza(D)J

    move-result-wide v22
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_1

    .line 56
    :catch_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    .line 52
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_1

    :cond_18
    move-object/from16 v31, v6

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zza:Ljava/util/List;

    iput v11, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzc:I

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbjk;->zzd:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzd:I

    goto :goto_2

    .line 64
    :cond_19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbis;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v16

    if-lez v6, :cond_1a

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzd:I

    goto :goto_2

    :cond_1a
    move/from16 v13, v28

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzd:I

    .line 63
    :goto_2
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zze:Ljava/lang/String;

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzf:I

    move-wide/from16 v11, v26

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzg:J

    move-object/from16 v1, v21

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzj:Lcom/google/android/gms/internal/ads/zzfit;

    move/from16 v9, v20

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzh:Z

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzi:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzk:Landroid/os/Bundle;

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzl:Ljava/lang/String;

    iput-object v15, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzm:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzn:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzo:Lorg/json/JSONObject;

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzp:Lorg/json/JSONObject;

    move-object/from16 v6, v31

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzq:Ljava/lang/String;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbji;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v18

    if-lez v2, :cond_1b

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v29

    :cond_1b
    move/from16 v1, v29

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzr:I

    move-wide/from16 v5, v24

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzs:J

    move-wide/from16 v5, v22

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfiu;->zzt:J

    return-void
.end method

.method private static final zza(D)J
    .locals 2

    .line 0
    const-wide/high16 v0, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_1

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    double-to-long p0, p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method
