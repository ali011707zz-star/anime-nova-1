.class public final Lcom/google/android/gms/internal/ads/zzdxf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdel;
.implements Lcom/google/android/gms/internal/ads/zzdct;
.implements Lcom/google/android/gms/internal/ads/zzdbi;
.implements Lcom/google/android/gms/internal/ads/zzdjy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdxt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdye;

.field private final zzc:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxt;Lcom/google/android/gms/internal/ads/zzdye;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzc:I

    return-void
.end method

.method private final zzc(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzguf;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzcK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 1
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxh;->zzv:Lcom/google/android/gms/internal/ads/zzdxh;

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    .line 3
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zzf()V

    .line 6
    const-string v3, "ls"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "1"

    const-string v6, "0"

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v7, v4, :cond_1

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 8
    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    move-object/from16 v8, p2

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 9
    check-cast v9, Lcom/google/android/gms/internal/ads/zzdxi;

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdxi;->zzb()Lcom/google/android/gms/internal/ads/zzdxh;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v11, -0x1

    invoke-virtual {v1, v10, v11, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdxi;->zzc()Lcom/google/android/gms/internal/ads/zzdxh;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzdxh;->zza()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10, v11, v12}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v15, 0x0

    cmp-long v12, v13, v15

    if-lez v12, :cond_3

    cmp-long v12, v10, v15

    if-lez v12, :cond_3

    .line 12
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdxi;->zza()Ljava/lang/String;

    move-result-object v9

    sub-long/2addr v10, v13

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "client_sig_latency_key"

    .line 13
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 14
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdxf;->zzf(Landroid/os/Bundle;)V

    const-string v3, "gms_sig_latency_key"

    .line 15
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 16
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzdxf;->zzf(Landroid/os/Bundle;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zziy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    const-string v3, "sod_h"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 20
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eq v7, v4, :cond_5

    move-object v5, v6

    .line 21
    :cond_5
    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    const-string v3, "cmr"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 23
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private final zzf(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 3
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzhR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zziy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzc:I

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v2, "sgw"

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "sgs"

    const-string v1, "action"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v2

    .line 8
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v1, "request_id"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object v2, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzd:Lcom/google/android/gms/internal/ads/zzbzu;

    iget-object v3, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zze:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbzu;->zzm:Landroid/os/Bundle;

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdxi;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdxf;->zzc(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzguf;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 12
    invoke-virtual {v3}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxi;->zza:Lcom/google/android/gms/internal/ads/zzguf;

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/internal/ads/zzdxf;->zzc(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzguf;)V

    .line 11
    :cond_4
    :goto_0
    :try_start_0
    iget-object v2, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzb:Ljava/lang/String;

    goto :goto_1

    .line 33
    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzc:Ljava/lang/String;

    .line 15
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v4

    .line 22
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzle:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    :try_start_1
    const-string v1, "extras"

    .line 26
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "accept_3p_cookie"

    .line 27
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    .line 33
    :cond_6
    const-string v1, "0"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 28
    :goto_2
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v2, "Error retrieving JSONObject from the requestJson, "

    .line 29
    invoke-static {v2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_7
    const-string v1, "na"

    :goto_3
    const-string v2, "tpc"

    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzbj;->zzd:Lcom/google/android/gms/internal/ads/zzbzu;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zza:Landroid/os/Bundle;

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzb(Landroid/os/Bundle;)V

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void

    .line 13
    :catch_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v2, "sgf"

    .line 17
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v1, "sgf_reason"

    const-string v2, "request_invalid"

    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public final zzdI(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "ftl"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ed"

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzig:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zzb:Ljava/lang/String;

    const-string v1, "emsg"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public final zzdO(Lcom/google/android/gms/internal/ads/zzbzu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbzu;->zza:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzb(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zzdP(Lcom/google/android/gms/internal/ads/zzfjc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zza(Lcom/google/android/gms/internal/ads/zzfjc;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzhR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zziy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzc:I

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    const-string v2, "sgw"

    .line 6
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "sgf"

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sgf_reason"

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdxt;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzg()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public final zzg()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zza:Lcom/google/android/gms/internal/ads/zzdxt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v1

    const-string v2, "action"

    const-string v3, "loaded"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zze()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdxi;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdxf;->zzc(Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzguf;)V

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbhe;->zzoc:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MUTE_AUDIO"

    .line 6
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v3, v1, :cond_0

    const-string v1, "0"

    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "1"

    .line 7
    :goto_0
    const-string v3, "mafe"

    .line 8
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzg()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxf;->zzb:Lcom/google/android/gms/internal/ads/zzdye;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxt;->zzc()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void
.end method
