.class public abstract Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzfjc;)Z
    .locals 1

    .line 0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjc;->zza:Lcom/google/android/gms/internal/ads/zzfiz;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfiz;->zza:Lcom/google/android/gms/internal/ads/zzfjk;

    invoke-static {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static zzb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "unspecified"

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "requester_type_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "requester_type_7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :pswitch_2
    const-string v0, "requester_type_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "requester_type_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "requester_type_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :pswitch_5
    const-string v0, "requester_type_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_6
    const-string v0, "requester_type_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_7
    const-string v0, "requester_type_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_8
    const-string v0, "requester_type_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    return-object p0

    :pswitch_9
    const-string p0, "8"

    return-object p0

    :pswitch_a
    const-string p0, "7"

    return-object p0

    :pswitch_b
    const-string p0, "6"

    return-object p0

    :pswitch_c
    const-string p0, "5"

    return-object p0

    :pswitch_d
    const-string p0, "4"

    return-object p0

    :pswitch_e
    const-string p0, "3"

    return-object p0

    :pswitch_f
    const-string p0, "2"

    return-object p0

    :pswitch_10
    const-string p0, "1"

    return-object p0

    :pswitch_11
    const-string p0, "0"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x67ecf68e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static zzc(Lcom/google/android/gms/ads/internal/client/zzm;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzc:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "query_info_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "unspecified"

    return-object p0
.end method

.method public static zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfot;
    .locals 1

    .line 1
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    const-string v0, "query_info_type"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzb:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 14
    :pswitch_0
    const-string v0, "requester_type_8"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "requester_type_7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x7

    goto :goto_1

    :pswitch_2
    const-string v0, "requester_type_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x6

    goto :goto_1

    :pswitch_3
    const-string v0, "requester_type_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :pswitch_4
    const-string v0, "requester_type_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :pswitch_5
    const-string v0, "requester_type_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    goto :goto_1

    :pswitch_6
    const-string v0, "requester_type_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_7
    const-string v0, "requester_type_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :pswitch_8
    const-string v0, "requester_type_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_1

    .line 15
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzb:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 6
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzj:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 7
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzi:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 8
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzh:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 9
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzg:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 10
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzf:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 11
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zze:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 12
    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzd:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 13
    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zzc:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    .line 14
    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/ads/zzfot;->zza:Lcom/google/android/gms/internal/ads/zzfot;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x67ecf68e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public static varargs zze(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbhe;->zzhR:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object p1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    new-instance v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzz;-><init>(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdye;Lcom/google/android/gms/internal/ads/zzdxt;Ljava/lang/String;[Landroid/util/Pair;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdyi;->zzd()Lj$/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    const-string v0, "action"

    .line 2
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzh(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_0

    .line 3
    aget-object v0, p3, p2

    .line 4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzh(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyi;->zzb(Ljava/util/Map;)V

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzfjk;)I
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfjk;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x4

    return p0
.end method

.method private static zzh(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
