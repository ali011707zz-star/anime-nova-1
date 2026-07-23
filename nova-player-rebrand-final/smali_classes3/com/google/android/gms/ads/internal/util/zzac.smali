.class public abstract Lcom/google/android/gms/ads/internal/util/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzhf:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "OfflineUpload.db"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgal;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgal;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgam;->zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgam;

    move-result-object v1

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgan;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgan;

    move-result-object v2

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgal;->zzk()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgal;->zzl()V

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgam;->zzj()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzgan;->zzb(Lcom/google/android/gms/internal/ads/zzgah;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    const-string v1, "clearStorageOnIdlessMode"

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    :goto_0
    :try_start_1
    const-string v0, "query_info_shared_prefs"

    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to remove query_info_shared_prefs"

    .line 14
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 11
    const-string v0, "clearStorageOnIdlessMode_scar"

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "JSON parsing error"

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    .line 1
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 6
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 7
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "bk"

    .line 8
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sk"

    .line 9
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    const/4 v8, -0x1

    .line 10
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    move v4, v2

    goto :goto_3

    :cond_2
    const/4 v4, 0x3

    goto :goto_3

    :cond_3
    move v4, v7

    goto :goto_3

    :cond_4
    move v4, v8

    .line 11
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    if-nez v4, :cond_5

    goto/16 :goto_6

    :cond_5
    const/16 v9, 0x2f

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgqq;->zzc(C)Lcom/google/android/gms/internal/ads/zzgqq;

    move-result-object v9

    .line 12
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgrr;->zza(Lcom/google/android/gms/internal/ads/zzgqq;)Lcom/google/android/gms/internal/ads/zzgrr;

    move-result-object v9

    .line 13
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzgrr;->zze(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v6

    .line 14
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-gt v9, v7, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    move-object v6, v1

    goto :goto_5

    .line 15
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_8

    .line 16
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 17
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_4

    .line 18
    :cond_8
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 19
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 20
    :goto_4
    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_5
    if-eqz v6, :cond_d

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_c

    if-eq v4, v8, :cond_9

    .line 21
    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    .line 22
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 23
    :cond_9
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_a

    .line 24
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 25
    :cond_a
    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_b

    .line 26
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_6

    .line 27
    :cond_b
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_d

    .line 28
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_6

    .line 29
    :cond_c
    instance-of v4, v6, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 30
    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_e
    return-object p1
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)Landroid/os/Bundle;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 4
    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/util/zzac;->zzb(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
