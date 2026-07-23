.class public final Lcom/google/android/gms/internal/ads/zzfur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfts;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfur;

.field private static final zzb:Landroid/os/Handler;

.field private static zzc:Landroid/os/Handler;

.field private static final zzk:Ljava/lang/Runnable;

.field private static final zzl:Ljava/lang/Runnable;


# instance fields
.field private final zzd:Ljava/util/List;

.field private zze:I

.field private final zzf:Ljava/util/List;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzftu;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfuk;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzful;

.field private zzj:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfur;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfur;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfur;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfun;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfun;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzk:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzl:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzf:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfuk;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfuk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzftu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzftu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzg:Lcom/google/android/gms/internal/ads/zzftu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzful;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfuu;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfuu;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzful;-><init>(Lcom/google/android/gms/internal/ads/zzfuu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzi:Lcom/google/android/gms/internal/ads/zzful;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfur;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zza:Lcom/google/android/gms/internal/ads/zzfur;

    return-object v0
.end method

.method static synthetic zzg()Landroid/os/Handler;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic zzi()Ljava/lang/Runnable;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzk:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic zzj()Ljava/lang/Runnable;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzl:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzftt;Lorg/json/JSONObject;IZ)V
    .locals 7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    :goto_0
    move-object v4, p0

    move-object v2, p1

    move-object v1, p2

    move-object v3, p3

    move v6, p5

    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :goto_1
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzftt;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfts;ZZ)V

    return-void
.end method

.method private static final zzl()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfur;->zzl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzftt;Lorg/json/JSONObject;Z)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfui;->zza(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzl(Landroid/view/View;)I

    move-result v5

    const/4 v1, 0x3

    if-ne v5, v1, :cond_1

    :cond_0
    move-object v1, p0

    goto/16 :goto_7

    .line 3
    :cond_1
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzftt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/ads/zzfud;->zze(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzg(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    const/4 v7, 0x1

    if-eqz p3, :cond_3

    .line 17
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzfud;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzj(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :try_start_0
    const-string p2, "hasWindowFocus"

    .line 19
    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 16
    const-string p2, "Error with setting has window focus"

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfue;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    .line 21
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfuk;->zzk(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 22
    :try_start_1
    const-string p1, "isPipActive"

    .line 23
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 20
    const-string p2, "Error with setting is picture-in-picture active"

    .line 24
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfue;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzf()V

    move-object v1, p0

    goto/16 :goto_6

    .line 6
    :cond_3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzi(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfuj;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfuj;->zzb()Lcom/google/android/gms/internal/ads/zzftk;

    move-result-object v0

    .line 7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfuj;->zzc()Ljava/util/ArrayList;

    move-result-object p3

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_4

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 9
    check-cast v8, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :try_start_2
    const-string p3, "isFriendlyObstructionFor"

    .line 11
    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionClass"

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftk;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionPurpose"

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftk;->zzc()Lcom/google/android/gms/internal/ads/zzfsq;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionReason"

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftk;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move p3, v7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p3, v0

    .line 24
    const-string v0, "Error with setting friendly obstruction"

    .line 15
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/ads/zzfue;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :cond_5
    move p3, v1

    :goto_4
    if-nez p4, :cond_6

    if-eqz p3, :cond_7

    :cond_6
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, v7

    goto :goto_5

    :cond_7
    move-object v2, p1

    move-object v3, p2

    move v6, v1

    move-object v1, p0

    .line 16
    :goto_5
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfur;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzftt;Lorg/json/JSONObject;IZ)V

    .line 25
    :goto_6
    iget p1, v1, Lcom/google/android/gms/internal/ads/zzfur;->zze:I

    add-int/2addr p1, v7

    iput p1, v1, Lcom/google/android/gms/internal/ads/zzfur;->zze:I

    :goto_7
    return-void
.end method

.method public final zzc()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfur;->zzk:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzc:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfur;->zzl:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfur;->zzb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfum;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfum;-><init>(Lcom/google/android/gms/internal/ads/zzfur;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfur;->zzl()V

    return-void
.end method

.method final synthetic zzf()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfth;->zza()Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfth;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfsn;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzj:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzd()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzg:Lcom/google/android/gms/internal/ads/zzftu;

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzftu;->zza()Lcom/google/android/gms/internal/ads/zzftt;

    move-result-object v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzb()Ljava/util/HashSet;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfuk;->zzb()Ljava/util/HashSet;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/ads/zzftt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    .line 10
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzfuk;->zzh(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzftu;->zzb()Lcom/google/android/gms/internal/ads/zzftt;

    move-result-object v9

    .line 11
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzfuk;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 12
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzftt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v9

    .line 13
    invoke-static {v9, v6}, Lcom/google/android/gms/internal/ads/zzfud;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "notVisibleReason"

    .line 14
    invoke-virtual {v9, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 26
    const-string v10, "Error with setting not visible reason"

    .line 15
    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzfue;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    :goto_2
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfud;->zze(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 17
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfud;->zzf(Lorg/json/JSONObject;)V

    new-instance v0, Ljava/util/HashSet;

    .line 18
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzi:Lcom/google/android/gms/internal/ads/zzful;

    .line 20
    invoke-virtual {v6, v8, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzful;->zzb(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzh:Lcom/google/android/gms/internal/ads/zzfuk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuk;->zza()Ljava/util/HashSet;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 22
    invoke-interface {v7, v11}, Lcom/google/android/gms/internal/ads/zzftt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    .line 23
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzfur;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzftt;Lorg/json/JSONObject;IZ)V

    .line 24
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfud;->zzf(Lorg/json/JSONObject;)V

    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzfur;->zzi:Lcom/google/android/gms/internal/ads/zzful;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuk;->zza()Ljava/util/HashSet;

    move-result-object v2

    .line 25
    invoke-virtual {v1, v8, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzful;->zza(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_3

    :cond_3
    move-object v5, p0

    .line 34
    iget-object v1, v5, Lcom/google/android/gms/internal/ads/zzfur;->zzi:Lcom/google/android/gms/internal/ads/zzful;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzful;->zzc()V

    .line 27
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfuk;->zze()V

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, v5, Lcom/google/android/gms/internal/ads/zzfur;->zzj:J

    sub-long/2addr v0, v2

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzfur;->zzd:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    throw v11

    .line 33
    :cond_5
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzftr;->zza()Lcom/google/android/gms/internal/ads/zzftr;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzftr;->zzc()V

    return-void
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzful;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfur;->zzi:Lcom/google/android/gms/internal/ads/zzful;

    return-object v0
.end method
