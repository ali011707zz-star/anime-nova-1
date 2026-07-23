.class final Lcom/google/android/gms/internal/consent_sdk/zzp;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

.field private final zzb:Landroid/app/Activity;

.field private final zzc:Lcom/google/android/ump/ConsentDebugSettings;

.field private final zzd:Lcom/google/android/ump/ConsentRequestParameters;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzn;Landroid/app/Activity;Lcom/google/android/ump/ConsentDebugSettings;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/gms/internal/consent_sdk/zzo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    iput-object p4, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/consent_sdk/zzp;)Lcom/google/android/gms/internal/consent_sdk/zzcl;
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzcl;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/ump/ConsentRequestParameters;->zza()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v5

    .line 4
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v2}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x80

    .line 6
    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_1

    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    .line 7
    invoke-virtual {v2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3
    :goto_1
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/ump/ConsentDebugSettings;->isTestDevice()Z

    move-result v2

    const/4 v5, 0x2

    if-nez v2, :cond_2

    .line 10
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    .line 29
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/ump/ConsentDebugSettings;->getDebugGeography()I

    move-result v1

    const/4 v6, 0x1

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    goto :goto_2

    .line 17
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zze:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 13
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 15
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 16
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/consent_sdk/zzcg;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcg;

    .line 17
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    .line 10
    :goto_3
    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzj:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzn;)Lcom/google/android/gms/internal/consent_sdk/zzaq;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/consent_sdk/zzaq;->zzc()Ljava/util/Map;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzf:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/ump/ConsentRequestParameters;->isTagForUnderAgeOfConsent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zze:Ljava/lang/Boolean;

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzd:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzch;

    invoke-direct {v2}, Lcom/google/android/gms/internal/consent_sdk/zzch;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v2, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzb:Ljava/lang/Integer;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v6, v2, Lcom/google/android/gms/internal/consent_sdk/zzch;->zza:Ljava/lang/String;

    iput v5, v2, Lcom/google/android/gms/internal/consent_sdk/zzch;->zzc:I

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzch;

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v5

    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;

    .line 24
    invoke-direct {v5}, Lcom/google/android/gms/internal/consent_sdk/zzcj;-><init>()V

    .line 25
    iget v6, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zza:Ljava/lang/Integer;

    .line 26
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzb:Ljava/lang/Integer;

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v2

    .line 27
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzc:Ljava/lang/Double;

    const/16 v2, 0x1c

    if-ge v3, v2, :cond_7

    .line 28
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto/16 :goto_9

    .line 48
    :cond_7
    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzb:Landroid/app/Activity;

    if-nez v3, :cond_8

    move-object v3, v4

    goto :goto_4

    .line 29
    :cond_8
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    :goto_4
    if-nez v3, :cond_9

    move-object v3, v4

    goto :goto_5

    .line 30
    :cond_9
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    :goto_5
    if-nez v3, :cond_a

    move-object v3, v4

    goto :goto_6

    .line 31
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    :goto_6
    if-nez v3, :cond_b

    move-object v3, v4

    goto :goto_7

    .line 32
    :cond_b
    invoke-static {v3}, Landroidx/core/view/WindowInsetsCompat$Impl28$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v3

    :goto_7
    if-nez v3, :cond_c

    .line 33
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9

    .line 34
    :cond_c
    invoke-static {v3}, Landroidx/window/layout/DisplayCompatHelperApi28$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/DisplayCutout;)I

    new-instance v6, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzx$$ExternalSyntheticApiModelOutline0;->m(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-eqz v7, :cond_d

    new-instance v8, Lcom/google/android/gms/internal/consent_sdk/zzci;

    invoke-direct {v8}, Lcom/google/android/gms/internal/consent_sdk/zzci;-><init>()V

    .line 37
    iget v9, v7, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzb:Ljava/lang/Integer;

    .line 38
    iget v9, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzc:Ljava/lang/Integer;

    .line 39
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v8, Lcom/google/android/gms/internal/consent_sdk/zzci;->zza:Ljava/lang/Integer;

    .line 40
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v8, Lcom/google/android/gms/internal/consent_sdk/zzci;->zzd:Ljava/lang/Integer;

    .line 41
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    move-object v3, v6

    .line 28
    :goto_9
    iput-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzcj;->zzd:Ljava/util/List;

    iput-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzcj;

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v3

    :try_start_1
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-object v1, v4

    :goto_a
    new-instance v5, Lcom/google/android/gms/internal/consent_sdk/zzcf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/consent_sdk/zzcf;-><init>()V

    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zza:Lcom/google/android/gms/internal/consent_sdk/zzn;

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzn;->zza(Lcom/google/android/gms/internal/consent_sdk/zzn;)Landroid/app/Application;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_f
    iput-object v4, v5, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_11

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_10

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzco$$ExternalSyntheticApiModelOutline0;->m(Landroid/content/pm/PackageInfo;)J

    move-result-wide v1

    goto :goto_b

    .line 48
    :cond_10
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v1, v1

    .line 49
    :goto_b
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/google/android/gms/internal/consent_sdk/zzcf;->zzc:Ljava/lang/String;

    :cond_11
    iput-object v5, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzh:Lcom/google/android/gms/internal/consent_sdk/zzcf;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzck;

    invoke-direct {v1}, Lcom/google/android/gms/internal/consent_sdk/zzck;-><init>()V

    const-string v2, "4.0.0"

    iput-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzck;->zza:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzi:Lcom/google/android/gms/internal/consent_sdk/zzck;

    iget-object p0, p0, Lcom/google/android/gms/internal/consent_sdk/zzp;->zzd:Lcom/google/android/ump/ConsentRequestParameters;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/ump/ConsentRequestParameters;->getConsentSyncId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/consent_sdk/zzcl;->zzb:Ljava/lang/String;

    return-object v0

    .line 8
    :cond_12
    new-instance p0, Lcom/google/android/gms/internal/consent_sdk/zzg;

    .line 51
    const-string v0, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">"

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/consent_sdk/zzg;-><init>(ILjava/lang/String;)V

    throw p0
.end method
