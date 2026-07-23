.class final Lcom/google/android/gms/internal/ads/zzfbi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfax;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgzy;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzecp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgzy;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzecp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zzc:Lcom/google/android/gms/internal/ads/zzecp;

    return-void
.end method

.method private static zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfbh;-><init>(Lcom/google/android/gms/internal/ads/zzfbi;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbi;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgzy;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    .line 0
    const/16 v0, 0x26

    return v0
.end method

.method final synthetic zzc()Lcom/google/android/gms/internal/ads/zzfbg;
    .locals 29

    move-object/from16 v0, p0

    .line 1
    const-string v1, "com.google.unity.ads.UNITY_VERSION"

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 3
    const-string v5, "geo:0,0?q=donuts"

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzfbi;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    const-string v6, "http://www.google.com"

    .line 4
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/zzfbi;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 5
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzw()Z

    move-result v11

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/common/util/DeviceProperties;->isLatchsky(Landroid/content/Context;)Z

    move-result v12

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Landroid/content/Context;)Z

    move-result v13

    .line 10
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    const/4 v8, 0x0

    if-lt v4, v7, :cond_0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfbi$$ExternalSyntheticApiModelOutline0;->m()Landroid/os/LocaleList;

    move-result-object v4

    move v7, v8

    .line 13
    :goto_0
    invoke-static {v4}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/LocaleList;)I

    move-result v9

    if-ge v7, v9, :cond_0

    .line 14
    invoke-static {v4, v7}, Landroidx/core/os/LocaleListPlatformWrapper$$ExternalSyntheticApiModelOutline3;->m(Landroid/os/LocaleList;I)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "market://details?id=com.google.android.gms.ads"

    .line 15
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzfbi;->zzd(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const-string v7, "."

    const/16 v16, 0x0

    if-nez v4, :cond_1

    :goto_1
    move-object/from16 v2, v16

    const/16 v17, 0x1

    goto :goto_3

    .line 16
    :cond_1
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v17, 0x1

    :try_start_1
    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9, v8}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v9, v9, v18

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :cond_3
    :goto_2
    move-object/from16 v2, v16

    goto :goto_3

    :catch_1
    const/16 v17, 0x1

    goto :goto_2

    .line 15
    :goto_3
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Landroid/content/Context;

    const/16 v8, 0x80

    .line 19
    :try_start_2
    invoke-static {v4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v4

    const-string v9, "com.android.vending"

    .line 20
    invoke-virtual {v4, v9, v8}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 21
    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int v8, v19, v20

    move-object/from16 v19, v2

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    const/4 v4, 0x0

    goto :goto_5

    :catch_2
    :cond_4
    move-object/from16 v19, v2

    :catch_3
    move-object/from16 v2, v16

    goto :goto_4

    :goto_5
    sget-object v18, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 23
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzoU:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 23
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Landroid/content/Context;

    .line 25
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzm(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/util/zzq;->zzb()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/util/zzq;->zza()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v7

    move-object/from16 v26, v8

    goto :goto_6

    .line 35
    :cond_5
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzoT:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 27
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Landroid/content/Context;

    .line 28
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzm(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/util/zzq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/ads/internal/util/zzq;->zzb()Ljava/lang/String;

    move-result-object v7

    :cond_6
    move-object/from16 v26, v7

    move-object/from16 v27, v16

    .line 25
    :goto_6
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzfbi;->zzb:Landroid/content/Context;

    if-nez v3, :cond_7

    move-object/from16 v20, v2

    goto :goto_8

    .line 48
    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    .line 29
    const-string v20, "http://www.example.com"

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v8, v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    .line 30
    invoke-virtual {v3, v8, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    const/high16 v4, 0x10000

    .line 31
    invoke-virtual {v3, v8, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    if-eqz v9, :cond_9

    const/4 v4, 0x0

    .line 32
    :goto_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 33
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v2

    .line 34
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 35
    iget-object v2, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 36
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzikw;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_8

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    goto :goto_7

    :cond_9
    move-object/from16 v20, v2

    const/4 v4, 0x0

    .line 37
    :goto_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    new-instance v2, Landroid/os/StatFs;

    .line 38
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v2

    const-wide/16 v8, 0x400

    div-long/2addr v2, v8

    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzmO:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 41
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzG(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v23, v17

    goto :goto_9

    :cond_a
    const/16 v23, 0x0

    :goto_9
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbhe;->zzmS:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 42
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v8

    .line 43
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 44
    :try_start_4
    invoke-static {v7}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v8

    .line 45
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x80

    invoke-virtual {v8, v7, v9}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_b

    .line 46
    invoke-virtual {v7, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 47
    invoke-virtual {v7, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_b
    :goto_a
    move-object/from16 v24, v16

    goto :goto_b

    .line 48
    :cond_c
    const-string v16, ""

    goto :goto_a

    :goto_b
    if-eqz v6, :cond_d

    move/from16 v9, v17

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    :goto_c
    if-eqz v5, :cond_e

    move/from16 v8, v17

    goto :goto_d

    :cond_e
    const/4 v8, 0x0

    .line 47
    :goto_d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfbi;->zzc:Lcom/google/android/gms/internal/ads/zzecp;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfbg;

    move-object/from16 v17, v20

    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzecp;->zza()Ljava/lang/String;

    move-result-object v28

    move-wide/from16 v21, v2

    move-object/from16 v16, v19

    move/from16 v19, v4

    invoke-direct/range {v7 .. v28}, Lcom/google/android/gms/internal/ads/zzfbg;-><init>(ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;JZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
