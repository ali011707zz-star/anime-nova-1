.class public abstract Lcom/google/android/gms/internal/ads/zzeng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekg;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zzd(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Z
    .locals 1

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    const-string p2, "pubid"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 39

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzv:Lorg/json/JSONObject;

    const-string v3, "pubid"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfjj;

    .line 3
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfjj;-><init>()V

    .line 4
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzfjj;->zzz(Lcom/google/android/gms/internal/ads/zzfjk;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 5
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfjj;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjj;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzfjj;->zzy(Z)Lcom/google/android/gms/internal/ads/zzfjj;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v7, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 7
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzeng;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 8
    const-string v8, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzeng;->zzd(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v12

    const-string v9, "gw"

    .line 9
    invoke-virtual {v12, v9, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 10
    const-string v9, "mad_hac"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 11
    invoke-virtual {v12, v9, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v9, "adJson"

    .line 12
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v9, "_ad"

    .line 13
    invoke-virtual {v12, v9, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "_noRefresh"

    .line 14
    invoke-virtual {v12, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzD:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 16
    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 17
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v11, :cond_2

    .line 19
    invoke-virtual {v12, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v9, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zza:I

    iget-wide v10, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzb:J

    iget v13, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzd:I

    iget-object v14, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zze:Ljava/util/List;

    iget-boolean v15, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    iget v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzg:I

    iget-boolean v8, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzh:Z

    iget-object v3, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzi:Ljava/lang/String;

    move/from16 v16, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzj:Lcom/google/android/gms/ads/internal/client/zzfx;

    move-object/from16 v19, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzk:Landroid/location/Location;

    move-object/from16 v20, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzl:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzn:Landroid/os/Bundle;

    move-object/from16 v23, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzo:Ljava/util/List;

    move-object/from16 v24, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzq:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-boolean v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzr:Z

    move/from16 v27, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    move-object/from16 v28, v2

    iget v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzt:I

    move/from16 v29, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzu:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzv:Ljava/util/List;

    move-object/from16 v31, v2

    iget v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzw:I

    move/from16 v32, v2

    iget-object v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    move-object/from16 v33, v2

    iget v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzy:I

    move/from16 v34, v2

    move-object/from16 v18, v3

    iget-wide v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    move-wide/from16 v35, v2

    iget-wide v2, v6, Lcom/google/android/gms/ads/internal/client/zzm;->zzA:J

    move/from16 v17, v8

    new-instance v8, Lcom/google/android/gms/ads/internal/client/zzm;

    move-wide/from16 v37, v2

    move-object/from16 v22, v7

    .line 21
    invoke-direct/range {v8 .. v38}, Lcom/google/android/gms/ads/internal/client/zzm;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzfx;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/ads/internal/client/zzc;ILjava/lang/String;Ljava/util/List;ILjava/lang/String;IJJ)V

    .line 22
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzfjj;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfjj;

    .line 23
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfjj;->zzA()Lcom/google/android/gms/internal/ads/zzfjk;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    .line 24
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 25
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzfjc;->zzb:Lcom/google/android/gms/internal/ads/zzfjb;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfjb;->zzb:Lcom/google/android/gms/internal/ads/zzfiu;

    new-instance v6, Landroid/os/Bundle;

    .line 26
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzfiu;->zza:Ljava/util/List;

    .line 27
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v8, "nofill_urls"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v7, "refresh_interval"

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzfiu;->zzc:I

    .line 28
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "gws_query_id"

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    .line 29
    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parent_common_config"

    .line 25
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfjk;->zzg:Ljava/lang/String;

    new-instance v5, Landroid/os/Bundle;

    .line 30
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "initial_ad_unit_id"

    .line 31
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzw:Ljava/lang/String;

    const-string v6, "allocation_id"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzF:Ljava/lang/String;

    const-string v6, "ad_source_name"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 34
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzc:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "click_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 35
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzd:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "imp_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 36
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzp:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "manual_tracking_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 37
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzm:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "fill_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 38
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzg:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "video_start_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 39
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzh:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "video_reward_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/util/ArrayList;

    .line 40
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzi:Ljava/util/List;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v6, "video_complete_urls"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 41
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzj:Ljava/lang/String;

    const-string v6, "transaction_id"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzk:Ljava/lang/String;

    const-string v6, "valid_from_timestamp"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzP:Z

    const-string v6, "is_closable_area_disabled"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzao:Ljava/lang/String;

    const-string v6, "recursive_server_response_data"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzW:Z

    const-string v6, "is_analytics_logging_enabled"

    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzl:Lcom/google/android/gms/internal/ads/zzcas;

    if-eqz v4, :cond_4

    new-instance v6, Landroid/os/Bundle;

    .line 47
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "rb_amount"

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzcas;->zzb:I

    .line 48
    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "rb_type"

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzcas;->zza:Ljava/lang/String;

    .line 49
    invoke-virtual {v6, v7, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/os/Bundle;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "rewards"

    .line 50
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    :cond_4
    const-string v4, "parent_ad_config"

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v4, p0

    .line 52
    invoke-virtual {v4, v2, v3, v1, v0}, Lcom/google/android/gms/internal/ads/zzeng;->zzc(Lcom/google/android/gms/internal/ads/zzfjk;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected abstract zzc(Lcom/google/android/gms/internal/ads/zzfjk;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfir;Lcom/google/android/gms/internal/ads/zzfjc;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method
