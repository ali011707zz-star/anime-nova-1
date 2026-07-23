.class public final Lcom/google/android/gms/internal/ads/zzcso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbss;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbdb;

.field private final zzc:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcso;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzb:Lcom/google/android/gms/internal/ads/zzbdb;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzc:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcsr;)Lorg/json/JSONObject;
    .locals 13

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzcsr;->zzf:Lcom/google/android/gms/internal/ads/zzbdd;

    if-nez v2, :cond_0

    .line 4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_1

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzb:Lcom/google/android/gms/internal/ads/zzbdb;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdb;->zzc()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 6
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zza:Z

    .line 7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdb;->zzb()Ljava/lang/String;

    move-result-object v6

    const-string v7, "afmaVersion"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdb;->zzc()Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "activeViewJSON"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzcsr;->zzd:J

    const-string v9, "timestamp"

    .line 10
    invoke-virtual {v6, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdb;->zza()Ljava/lang/String;

    move-result-object v7

    const-string v8, "adFormat"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdb;->zzd()Ljava/lang/String;

    move-result-object v7

    const-string v8, "hashCode"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isMraid"

    const/4 v8, 0x0

    .line 13
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isStopped"

    .line 14
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    iget-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzcsr;->zzb:Z

    const-string v8, "isPaused"

    .line 15
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbdb;->zze()Z

    move-result v3

    const-string v7, "isNative"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcso;->zzc:Landroid/os/PowerManager;

    const-string v7, "isScreenOn"

    .line 17
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    .line 18
    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzd()Z

    move-result v6

    const-string v7, "appMuted"

    invoke-virtual {v3, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzi()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/util/zzaa;->zzb()F

    move-result v6

    float-to-double v6, v6

    const-string v8, "appVolume"

    invoke-virtual {v3, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcso;->zza:Landroid/content/Context;

    .line 21
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzaa;->zze(Landroid/content/Context;)F

    move-result v7

    float-to-double v7, v7

    const-string v9, "deviceVolume"

    invoke-virtual {v3, v9, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzb:I

    const-string v7, "windowVisibility"

    .line 23
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "isAttachedToWindow"

    .line 24
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzc:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 25
    const-string v9, "top"

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 26
    const-string v10, "bottom"

    invoke-virtual {v6, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 27
    const-string v11, "left"

    invoke-virtual {v6, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 28
    const-string v8, "right"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "viewBox"

    .line 29
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzd:Landroid/graphics/Rect;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 30
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 31
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 32
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 33
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "adBox"

    .line 34
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zze:Landroid/graphics/Rect;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 35
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 36
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 37
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 38
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "globalVisibleBox"

    .line 39
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzf:Z

    const-string v7, "globalVisibleBoxVisible"

    .line 40
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzg:Landroid/graphics/Rect;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 41
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 42
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 43
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 44
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "localVisibleBox"

    .line 45
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    iget-boolean v6, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzh:Z

    const-string v7, "localVisibleBoxVisible"

    .line 46
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzi:Landroid/graphics/Rect;

    iget v12, v7, Landroid/graphics/Rect;->top:I

    .line 47
    invoke-virtual {v6, v9, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    .line 48
    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v12, v7, Landroid/graphics/Rect;->left:I

    .line 49
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 50
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "hitBox"

    .line 51
    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v6, v3

    const-string v3, "screenDensity"

    .line 52
    invoke-virtual {v4, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzcsr;->zza:Z

    const-string v4, "isVisible"

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbhe;->zzbW:Lcom/google/android/gms/internal/ads/zzbgv;

    .line 55
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbhc;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbhc;->zzd(Lcom/google/android/gms/internal/ads/zzbgv;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbdd;->zzk:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 57
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    new-instance v6, Lorg/json/JSONObject;

    .line 58
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 59
    invoke-virtual {v6, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 60
    invoke-virtual {v6, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    .line 61
    invoke-virtual {v6, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 62
    invoke-virtual {v6, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 58
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "scrollableContainerBoxes"

    .line 63
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcsr;->zze:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "doneReasonCode"

    const-string v2, "u"

    .line 65
    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    move-object p1, v5

    .line 66
    :goto_1
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p1, "units"

    .line 67
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1

    .line 6
    :cond_4
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Active view Info cannot be null."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcsr;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcso;->zza(Lcom/google/android/gms/internal/ads/zzcsr;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
