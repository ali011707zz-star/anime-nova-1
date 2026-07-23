.class public final Lcom/google/android/gms/internal/ads/zzbou;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzboh;


# instance fields
.field private final zza:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdxz;

.field private zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbwr;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcrv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdae;

.field private zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzgzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbwr;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzcrv;Lcom/google/android/gms/internal/ads/zzdae;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzi:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zza:Lcom/google/android/gms/ads/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzd:Lcom/google/android/gms/internal/ads/zzbwr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzf:Lcom/google/android/gms/internal/ads/zzcrv;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzg:Lcom/google/android/gms/internal/ads/zzdae;

    return-void
.end method

.method public static zzb(Ljava/util/Map;)Z
    .locals 2

    .line 1
    const-string v0, "1"

    const-string v1, "custom_close"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static zzc(Ljava/util/Map;)I
    .locals 1

    .line 1
    const-string v0, "o"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    const-string v0, "p"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const-string v0, "l"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const-string v0, "c"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0xe

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method static zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/net/Uri;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zznv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_1

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzazh;->zze(Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p5, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzfjo;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzazh;->zze(Landroid/net/Uri;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 6
    invoke-virtual {p1, p2, p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzazh;->zzd(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazi; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string p1, "OpenGmsgHandler.maybeAddClickSignalsToUri"

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_1
    :cond_2
    :goto_1
    return-object p2
.end method

.method static zze(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "aclk_ms"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "aclk_upms"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object p0

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v2, "Error adding click uptime parameter to url: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method private final zzh(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v8, p4

    .line 1
    move-object/from16 v9, p2

    check-cast v9, Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v0

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzaC()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v2

    const/4 v10, 0x0

    const-string v4, ""

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfiu;->zzb:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfir;->zzb()Z

    move-result v0

    move-object v5, v4

    move v4, v0

    goto :goto_0

    :cond_0
    move-object v5, v4

    move v4, v10

    .line 3
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzmh:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    .line 5
    const-string v0, "sc"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v6, v10

    goto :goto_1

    :cond_1
    move v6, v11

    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzoj:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "true"

    if-eqz v0, :cond_2

    .line 9
    const-string v0, "ig_cl"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 10
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v11

    goto :goto_2

    :cond_2
    move v7, v10

    :goto_2
    const-string v0, "expand"

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzW()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Cannot expand WebView that is already expanded."

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzbou;->zzl(Z)V

    .line 16
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzclb;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzb(Ljava/util/Map;)Z

    move-result v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzc(Ljava/util/Map;)I

    move-result v3

    .line 16
    invoke-interface {v0, v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzclb;->zzaI(ZIZ)V

    return-void

    :cond_4
    const-string v0, "webapp"

    .line 18
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 19
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzbou;->zzl(Z)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zznr:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "is_allowed_for_lock_screen"

    .line 22
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v17, v11

    goto :goto_3

    :cond_5
    move/from16 v17, v10

    :goto_3
    if-eqz p1, :cond_6

    .line 23
    move-object/from16 v12, p2

    check-cast v12, Lcom/google/android/gms/internal/ads/zzclb;

    .line 24
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzb(Ljava/util/Map;)Z

    move-result v13

    .line 25
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzc(Ljava/util/Map;)I

    move-result v14

    move-object/from16 v15, p1

    move/from16 v16, v6

    .line 23
    invoke-interface/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzclb;->zzaJ(ZILjava/lang/String;ZZ)V

    return-void

    .line 26
    :cond_6
    move-object/from16 v12, p2

    check-cast v12, Lcom/google/android/gms/internal/ads/zzclb;

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzb(Ljava/util/Map;)Z

    move-result v13

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzc(Ljava/util/Map;)I

    move-result v14

    const-string v0, "html"

    .line 29
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/String;

    const-string v0, "baseurl"

    .line 30
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    move/from16 v17, v6

    .line 26
    invoke-interface/range {v12 .. v17}, Lcom/google/android/gms/internal/ads/zzclb;->zzaK(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_7
    const-string v0, "chrome_custom_tab"

    .line 31
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_11

    .line 32
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzfF:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 33
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 34
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v0, "User opt out chrome custom tab."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 36
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzm(I)V

    goto :goto_5

    .line 47
    :cond_8
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzfz:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 38
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 40
    invoke-static {v0, v12}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    goto :goto_4

    .line 41
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v10, v11

    goto :goto_4

    .line 43
    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbif;->zza(Landroid/content/Context;)Z

    move-result v10

    :cond_b
    :goto_4
    if-nez v10, :cond_c

    const/4 v0, 0x4

    .line 44
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzm(I)V

    .line 36
    :goto_5
    const-string v0, "use_first_package"

    .line 45
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "use_running_process"

    .line 46
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, p2

    .line 47
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbou;->zzk(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    :cond_c
    move v13, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v3

    move-object/from16 v3, p2

    .line 48
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzbou;->zzl(Z)V

    .line 49
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 50
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Cannot open browser with null or empty url"

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 52
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzbou;->zzm(I)V

    return-void

    .line 53
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 54
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 55
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzS()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v15

    .line 56
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v17

    .line 57
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object v18

    .line 58
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzT()Lcom/google/android/gms/internal/ads/zzfjo;

    move-result-object v19

    .line 59
    invoke-static/range {v14 .. v19}, Lcom/google/android/gms/internal/ads/zzbou;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v4, :cond_e

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    if-eqz v2, :cond_e

    .line 61
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-direct {v1, v3, v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzbou;->zzi(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbor;

    .line 63
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzbor;-><init>(Lcom/google/android/gms/internal/ads/zzbou;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    .line 64
    move-object v2, v3

    check-cast v2, Lcom/google/android/gms/internal/ads/zzclb;

    new-instance v14, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 65
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    new-instance v4, Landroid/os/Bundle;

    .line 66
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzfE:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 69
    const-string v0, "cct_init_h"

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "OpenGmsgHandler.getChromeCustomTabConfigBundle"

    if-eqz v8, :cond_f

    :try_start_0
    const-string v8, "h"

    .line 70
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    invoke-virtual {v4, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 156
    const-string v8, "Invalid cct initial height parameter."

    .line 72
    invoke-static {v8, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v8

    .line 74
    invoke-virtual {v8, v0, v9}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 75
    :cond_f
    :goto_6
    const-string v0, "cct_bp"

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    :try_start_1
    const-string v8, "cbp"

    .line 76
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    invoke-virtual {v4, v8, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 74
    const-string v5, "Invalid cct close button position parameter."

    .line 78
    invoke-static {v5, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v5

    .line 80
    invoke-virtual {v5, v0, v9}, Lcom/google/android/gms/internal/ads/zzcdu;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 81
    :cond_10
    :goto_7
    invoke-static {v3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    const/16 v24, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v25, v4

    .line 82
    invoke-direct/range {v14 .. v25}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ZLandroid/os/Bundle;)V

    .line 64
    invoke-interface {v2, v14, v7, v13, v6}, Lcom/google/android/gms/internal/ads/zzclb;->zzaH(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    :cond_11
    move v13, v7

    move v7, v6

    move-object v6, v5

    move-object v5, v3

    move-object/from16 v3, p2

    .line 43
    const-string v0, "app"

    .line 83
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "system_browser"

    .line 84
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_12
    move-object v2, v6

    move v6, v4

    move v4, v7

    move-object v7, v2

    move-object v2, v3

    move-object v3, v5

    goto :goto_8

    :cond_13
    move-object v2, v3

    move-object v3, v5

    move-object v5, v6

    move v6, v7

    move v7, v13

    .line 156
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbou;->zzk(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V

    return-void

    .line 84
    :goto_8
    const-string v0, "open_app"

    .line 85
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v14, "p"

    if-eqz v0, :cond_17

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjA:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 88
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzbou;->zzl(Z)V

    .line 89
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_14

    .line 90
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Package name missing from open app action."

    .line 91
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_14
    if-eqz v6, :cond_15

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    if-eqz v3, :cond_15

    .line 92
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, v7}, Lcom/google/android/gms/internal/ads/zzbou;->zzi(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 93
    :cond_15
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_16

    .line 94
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Cannot get package manager from open app action."

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    .line 96
    :cond_16
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 97
    check-cast v2, Lcom/google/android/gms/internal/ads/zzclb;

    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v3, v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    invoke-interface {v2, v3, v4, v13, v7}, Lcom/google/android/gms/internal/ads/zzclb;->zzaH(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    .line 98
    :cond_17
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzbou;->zzl(Z)V

    const-string v0, "intent_url"

    .line 99
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 100
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 101
    :try_start_2
    invoke-static {v5, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    .line 102
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget v15, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v15, "Error parsing the url: "

    invoke-virtual {v15, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    invoke-static {v5, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_18
    :goto_9
    if-eqz v12, :cond_1a

    .line 104
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 105
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 106
    invoke-virtual {v5, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 108
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v15

    .line 109
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzS()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v16

    .line 110
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v18

    .line 111
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object v19

    .line 112
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzT()Lcom/google/android/gms/internal/ads/zzfjo;

    move-result-object v20

    move-object/from16 v17, v0

    .line 113
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zzbou;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzjB:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 116
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v15

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 115
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 118
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v0, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_a

    .line 117
    :cond_19
    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    :cond_1a
    :goto_a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzjW:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 119
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v15, "event_id"

    if-eqz v0, :cond_1b

    const-string v0, "intent_async"

    .line 121
    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 122
    invoke-interface {v3, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_b

    :cond_1b
    move v11, v10

    :goto_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzoo:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 123
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 124
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzg:Lcom/google/android/gms/internal/ads/zzdae;

    if-eqz v0, :cond_1c

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdae;->zzl()V

    :cond_1c
    move/from16 v16, v4

    new-instance v4, Ljava/util/HashMap;

    .line 126
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz v11, :cond_1d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbos;

    move-object v5, v3

    move-object v3, v2

    move/from16 v2, v16

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzbou;ZLcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/util/Map;)V

    move-object v2, v3

    move-object v3, v5

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    goto :goto_c

    :cond_1d
    move/from16 v10, v16

    :goto_c
    const-string v0, "openIntentAsync"

    if-eqz v12, :cond_1f

    if-eqz v6, :cond_1e

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    if-eqz v5, :cond_1e

    .line 129
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-direct {v1, v2, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzbou;->zzi(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz v11, :cond_21

    .line 132
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbrd;

    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 131
    :cond_1e
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzclb;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v2, v12, v3}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    invoke-interface {v0, v2, v10, v13, v7}, Lcom/google/android/gms/internal/ads/zzclb;->zzaH(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void

    .line 134
    :cond_1f
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 135
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 137
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 138
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzS()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v17

    .line 139
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v19

    .line 140
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object v20

    .line 141
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->zzT()Lcom/google/android/gms/internal/ads/zzfjo;

    move-result-object v21

    .line 142
    invoke-static/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzbou;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/net/Uri;

    move-result-object v5

    .line 143
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 144
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_20
    move-object/from16 v5, p1

    :goto_d
    if-eqz v6, :cond_22

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    if-eqz v6, :cond_22

    .line 146
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v2, v6, v5, v7}, Lcom/google/android/gms/internal/ads/zzbou;->zzi(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    if-eqz v11, :cond_21

    .line 154
    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    check-cast v2, Lcom/google/android/gms/internal/ads/zzbrd;

    invoke-interface {v2, v0, v4}, Lcom/google/android/gms/internal/ads/zzbrd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_21
    return-void

    .line 147
    :cond_22
    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzclb;

    new-instance v16, Lcom/google/android/gms/ads/internal/overlay/zzc;

    .line 148
    const-string v2, "i"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    const-string v2, "m"

    .line 149
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Ljava/lang/String;

    .line 150
    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/String;

    const-string v2, "c"

    .line 151
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    const-string v2, "f"

    .line 152
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    const-string v2, "e"

    .line 153
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    move-object/from16 v24, v2

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v24}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    move-object/from16 v2, v16

    .line 147
    invoke-interface {v0, v2, v10, v13, v7}, Lcom/google/android/gms/internal/ads/zzclb;->zzaH(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V

    return-void
.end method

.method private final zzi(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    const-string v2, "offline_open"

    invoke-static {p2, v0, v1, p4, v2}, Lcom/google/android/gms/internal/ads/zzejf;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzeiu;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzs(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/ads/internal/util/client/zzu;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzc:Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 4
    invoke-virtual {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzeiu;->zzc(Lcom/google/android/gms/ads/internal/util/client/zzu;Ljava/lang/String;)V

    return v2

    .line 5
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzay:Lcom/google/android/gms/ads/internal/util/client/zzw;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/ads/internal/util/client/zzw;->zzc()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfir;->zzad:Lcom/google/android/gms/internal/ads/zzbxy;

    if-eqz v3, :cond_4

    iget-boolean v6, v3, Lcom/google/android/gms/internal/ads/zzbxy;->zza:Z

    if-eqz v6, :cond_4

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzbxy;->zzb:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbxy;->zzc:Z

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    if-nez v5, :cond_10

    if-eqz v3, :cond_5

    .line 6
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzjQ:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_7

    .line 9
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzE(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzbo;

    move-result-object v3

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 11
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v5

    const-string v6, "offline_notification_channel"

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/ads/internal/util/zzz;

    move-result-object v7

    .line 13
    invoke-virtual {v7, p2, v6}, Lcom/google/android/gms/ads/internal/util/zzz;->zzh(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzN()Lcom/google/android/gms/internal/ads/zzclv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzclv;->zzg()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v4

    goto :goto_2

    :cond_6
    move v7, v2

    :goto_2
    if-nez v5, :cond_a

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 16
    invoke-static {p2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    .line 37
    :cond_7
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-ge v5, v8, :cond_8

    .line 17
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzjL:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_3

    .line 19
    :cond_8
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbhe;->zzjK:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v5

    .line 19
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_3
    if-eqz v5, :cond_9

    goto :goto_5

    .line 16
    :cond_9
    :goto_4
    const-string p1, "notifications_disabled"

    .line 37
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_a
    :goto_5
    if-eqz v6, :cond_b

    .line 17
    const-string p1, "notification_channel_disabled"

    .line 21
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_b
    if-nez v3, :cond_c

    const-string p1, "work_manager_unavailable"

    .line 22
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_c
    if-eqz v7, :cond_d

    const-string p1, "ad_no_activity"

    .line 23
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 24
    :cond_d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzjI:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_e

    const-string p1, "notification_flow_disabled"

    .line 26
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 27
    :cond_e
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejh;->zze()Lcom/google/android/gms/internal/ads/zzejg;

    move-result-object v3

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzj()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzejg;->zza(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzejg;

    .line 30
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzejg;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzm;)Lcom/google/android/gms/internal/ads/zzejg;

    .line 31
    invoke-virtual {v3, p4}, Lcom/google/android/gms/internal/ads/zzejg;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzejg;

    .line 32
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzejg;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzejg;

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzejg;->zze()Lcom/google/android/gms/internal/ads/zzejh;

    move-result-object p3

    .line 34
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcjl;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzm;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zzG(Lcom/google/android/gms/internal/ads/zzejh;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 28
    :cond_f
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzclb;

    const/16 v0, 0xe

    invoke-interface {p2, p4, p3, v0}, Lcom/google/android/gms/internal/ads/zzclb;->zzaL(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    :goto_6
    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    return v4

    .line 8
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    if-eqz p1, :cond_11

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    const-string v0, "onfs"

    .line 38
    invoke-static {p2, p1, p3, p4, v0}, Lcom/google/android/gms/internal/ads/zzejf;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzeiu;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return v2
.end method

.method private final zzj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    if-eqz v1, :cond_0

    const-string v0, "dialog_not_shown_reason"

    .line 2
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzgui;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v5

    const-string v4, "dialog_not_shown"

    move-object v0, p1

    move-object v3, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzejf;->zzk(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdxz;Lcom/google/android/gms/internal/ads/zzeiu;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final zzk(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;ZLjava/lang/String;ZZ)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x1

    .line 1
    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzbou;->zzl(Z)V

    .line 2
    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcjl;

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 4
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcjl;->zzS()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v9

    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcjl;->zzE()Landroid/view/View;

    move-result-object v10

    .line 6
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcjl;->zzT()Lcom/google/android/gms/internal/ads/zzfjo;

    move-result-object v11

    const-string v6, "activity"

    .line 7
    invoke-virtual {v8, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Landroid/app/ActivityManager;

    const-string v6, "u"

    .line 8
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object/from16 v17, v5

    const/4 v13, 0x0

    goto/16 :goto_5

    .line 10
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object v7, v9

    move-object v9, v10

    const/4 v10, 0x0

    move-object/from16 v19, v8

    move-object v8, v6

    move-object/from16 v6, v19

    .line 11
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbou;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/net/Uri;Landroid/view/View;Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/net/Uri;

    move-result-object v8

    move-object v10, v9

    move-object v9, v7

    .line 12
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzbou;->zze(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "use_first_package"

    .line 13
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v8, "use_running_process"

    .line 14
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v8, "use_custom_tabs"

    .line 15
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzfv:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v8, "http"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v13, "https"

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 18
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-static {v7, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbot;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/Intent;

    move-result-object v7

    .line 23
    invoke-static {v13, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbot;->zza(Landroid/net/Uri;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/Intent;

    move-result-object v13

    if-eqz v4, :cond_5

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v6, v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzs(Landroid/content/Context;Landroid/content/Intent;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v6, v13}, Lcom/google/android/gms/ads/internal/util/zzs;->zzs(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    move-object v8, v6

    move-object v6, v7

    move-object v7, v2

    const/4 v2, 0x0

    .line 26
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzc(Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object v7, v4

    .line 27
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzd(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/Intent;

    move-result-object v13

    :cond_6
    move-object/from16 v17, v5

    goto/16 :goto_5

    :cond_7
    move-object v4, v7

    if-eqz v13, :cond_8

    .line 28
    invoke-static {v13, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzb(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 29
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzd(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/Intent;

    move-result-object v13

    .line 30
    invoke-static {v13, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzb(Landroid/content/Intent;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-nez v7, :cond_6

    .line 31
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    move-object/from16 v17, v5

    goto :goto_4

    :cond_9
    if-eqz v15, :cond_c

    if-eqz v12, :cond_c

    .line 32
    invoke-virtual {v12}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_c

    .line 33
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    move v15, v2

    :goto_2
    if-ge v15, v13, :cond_c

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 34
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 35
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    add-int/lit8 v18, v15, 0x1

    if-eqz v17, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 36
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v17, v5

    iget-object v5, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 38
    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzd(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/Intent;

    move-result-object v13

    goto :goto_5

    :cond_a
    move-object/from16 v5, v17

    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    move/from16 v15, v18

    goto :goto_2

    :cond_c
    move-object/from16 v17, v5

    if-eqz v14, :cond_d

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/ResolveInfo;

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzbot;->zzd(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfjo;)Landroid/content/Intent;

    move-result-object v13

    goto :goto_5

    :cond_d
    :goto_4
    move-object v13, v6

    :goto_5
    if-eqz p3, :cond_f

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbou;->zze:Lcom/google/android/gms/internal/ads/zzeiu;

    if-eqz v2, :cond_f

    if-eqz v13, :cond_f

    .line 39
    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-direct {v1, v0, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzbou;->zzi(Lcom/google/android/gms/ads/internal/client/zza;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    return-void

    .line 41
    :cond_f
    :goto_6
    :try_start_0
    check-cast v0, Lcom/google/android/gms/internal/ads/zzclb;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbou;->zzh:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-direct {v2, v13, v4}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-interface {v0, v2, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzclb;->zzaH(Lcom/google/android/gms/ads/internal/overlay/zzc;ZZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 43
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method private final zzl(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzd:Lcom/google/android/gms/internal/ads/zzbwr;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwr;->zzb(Z)V

    :cond_0
    return-void
.end method

.method private final zzm(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbhe;->zzfy:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzb:Lcom/google/android/gms/internal/ads/zzdxz;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxz;->zza()Lcom/google/android/gms/internal/ads/zzdxy;

    move-result-object v0

    const-string v1, "action"

    const-string v2, "cct_action"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    packed-switch p1, :pswitch_data_0

    const-string p1, "OPT_OUT"

    goto :goto_0

    .line 6
    :pswitch_0
    const-string p1, "WRONG_EXP_SETUP"

    goto :goto_0

    :pswitch_1
    const-string p1, "UNKNOWN"

    goto :goto_0

    :pswitch_2
    const-string p1, "EMPTY_URL"

    goto :goto_0

    :pswitch_3
    const-string p1, "ACTIVITY_NOT_FOUND"

    goto :goto_0

    :pswitch_4
    const-string p1, "CCT_READY_TO_OPEN"

    goto :goto_0

    :pswitch_5
    const-string p1, "CCT_NOT_SUPPORTED"

    goto :goto_0

    :pswitch_6
    const-string p1, "CONTEXT_NULL"

    goto :goto_0

    :pswitch_7
    const-string p1, "CONTEXT_NOT_AN_ACTIVITY"

    .line 4
    :goto_0
    const-string v1, "cct_open_status"

    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdxy;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdxy;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxy;->zzd()V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/internal/client/zza;

    .line 2
    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/HashMap;

    .line 3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->zzC()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfir;->zzaw:Ljava/util/Map;

    .line 6
    :cond_0
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcjl;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    invoke-static {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzccs;->zza(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "a"

    .line 8
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string p1, "Action missing from an open GMSG."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zza:Lcom/google/android/gms/ads/internal/zzb;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzb;->zzb()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/internal/zzb;->zzc(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_3
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbhe;->zzly:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzf:Lcom/google/android/gms/internal/ads/zzcrv;

    if-eqz v2, :cond_4

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcrv;->zzc(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzh()Ljava/util/Random;

    move-result-object v3

    .line 16
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzcrv;->zzb(Ljava/lang/String;Ljava/util/Random;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 16
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzboq;

    .line 17
    invoke-direct {v2, p0, p2, p1, v1}, Lcom/google/android/gms/internal/ads/zzboq;-><init>(Lcom/google/android/gms/internal/ads/zzbou;Ljava/util/Map;Lcom/google/android/gms/ads/internal/client/zza;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbou;->zzi:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzbou;->zzh(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method final synthetic zzg(I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbou;->zzm(I)V

    return-void
.end method
