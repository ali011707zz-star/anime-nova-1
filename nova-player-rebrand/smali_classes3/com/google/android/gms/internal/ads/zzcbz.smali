.class public final Lcom/google/android/gms/internal/ads/zzcbz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcce;


# static fields
.field public static final synthetic $r8$clinit:I

.field private static final zzc:Ljava/util/List;


# instance fields
.field zza:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzifv;

.field private final zze:Ljava/util/LinkedHashMap;

.field private final zzf:Ljava/util/List;

.field private final zzg:Ljava/util/List;

.field private final zzh:Landroid/content/Context;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzccb;

.field private final zzj:Ljava/lang/Object;

.field private zzk:Ljava/util/HashSet;

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcbz;->zzc:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzccb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcca;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzf:Ljava/util/List;

    new-instance p5, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzg:Ljava/util/List;

    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    new-instance p5, Ljava/util/HashSet;

    .line 3
    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzk:Ljava/util/HashSet;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzl:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzm:Z

    const-string p5, "SafeBrowsing config is not present."

    .line 4
    invoke-static {p3, p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzh:Landroid/content/Context;

    new-instance p1, Ljava/util/LinkedHashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zze:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzccb;->zze:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzk:Ljava/util/HashSet;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzk:Ljava/util/HashSet;

    const-string p3, "cookie"

    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    invoke-virtual {p3, p5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzihz;->zzg()Lcom/google/android/gms/internal/ads/zzifv;

    move-result-object p1

    const/16 p3, 0x9

    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzifv;->zzn(I)Lcom/google/android/gms/internal/ads/zzifv;

    if-eqz p4, :cond_2

    .line 12
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzifv;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifv;

    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzifv;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifv;

    .line 13
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzifx;->zzc()Lcom/google/android/gms/internal/ads/zzifw;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzccb;->zza:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 14
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzifw;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifw;

    .line 15
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzifx;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzifv;->zzd(Lcom/google/android/gms/internal/ads/zzifx;)Lcom/google/android/gms/internal/ads/zzifv;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzihm;->zzc()Lcom/google/android/gms/internal/ads/zzihl;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzh:Landroid/content/Context;

    .line 17
    invoke-static {p4}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->isCallerInstantApp()Z

    move-result p4

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzihl;->zzc(Z)Lcom/google/android/gms/internal/ads/zzihl;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzihl;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzihl;

    .line 19
    :cond_4
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzh:Landroid/content/Context;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result p2

    int-to-long p4, p2

    const-wide/16 v0, 0x0

    cmp-long p2, p4, v0

    if-lez p2, :cond_5

    .line 20
    invoke-virtual {p3, p4, p5}, Lcom/google/android/gms/internal/ads/zzihl;->zzb(J)Lcom/google/android/gms/internal/ads/zzihl;

    .line 21
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzihm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzifv;->zzk(Lcom/google/android/gms/internal/ads/zzihm;)Lcom/google/android/gms/internal/ads/zzifv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    return-void
.end method

.method static synthetic zzi()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbz;->zzc:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzccb;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzifv;->zzi()Lcom/google/android/gms/internal/ads/zzifv;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzifv;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzifv;

    .line 3
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzccb;->zzc:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzd(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzccb;->zzc:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzl:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    goto/16 :goto_6

    .line 2
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5
    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_2
    move-object v3, v1

    .line 6
    :goto_0
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :goto_1
    move-object v3, v1

    .line 7
    :goto_2
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v4, "Fail to capture the web view"

    .line 8
    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v3, :cond_5

    .line 9
    :try_start_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_4

    .line 13
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    .line 14
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v6, 0x0

    .line 15
    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 16
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move-object v1, v4

    goto :goto_6

    :catch_2
    move-exception p1

    goto :goto_5

    .line 10
    :cond_4
    :goto_4
    const-string p1, "Width or height of view is zero"

    .line 11
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    .line 17
    :goto_5
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v2, "Fail to capture the webview"

    .line 18
    invoke-static {v2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    move-object v1, v3

    :goto_6
    if-nez v1, :cond_6

    .line 1
    const-string p1, "Failed to capture the webview bitmap."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Ljava/lang/String;)V

    return-void

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzl:Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcby;

    invoke-direct {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzcby;-><init>(Lcom/google/android/gms/internal/ads/zzcbz;Landroid/graphics/Bitmap;)V

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzh(Ljava/lang/Runnable;)V

    :cond_7
    :goto_7
    return-void
.end method

.method public final zze(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzm:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne p3, v1, :cond_1

    .line 2
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzihj;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzihj;->zze(I)Lcom/google/android/gms/internal/ads/zzihj;

    .line 3
    :cond_1
    monitor-exit v0

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzihk;->zze()Lcom/google/android/gms/internal/ads/zzihj;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzihi;->zza(I)I

    move-result p3

    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzihj;->zze(I)Lcom/google/android/gms/internal/ads/zzihj;

    .line 6
    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result p3

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzihj;->zza(I)Lcom/google/android/gms/internal/ads/zzihj;

    .line 7
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzihj;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzihj;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzigl;->zzc()Lcom/google/android/gms/internal/ads/zzigi;

    move-result-object p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzk:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p2, :cond_7

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_5
    const-string v4, ""

    .line 12
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 19
    :cond_6
    const-string v3, ""

    .line 12
    :goto_3
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzk:Ljava/util/HashSet;

    .line 14
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzigh;->zzc()Lcom/google/android/gms/internal/ads/zzigg;

    move-result-object v5

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzian;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzigg;->zza(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzigg;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzian;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzigg;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzigg;

    .line 18
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzigh;

    .line 19
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzigi;->zza(Lcom/google/android/gms/internal/ads/zzigh;)Lcom/google/android/gms/internal/ads/zzigi;

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzigl;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzihj;->zzc(Lcom/google/android/gms/internal/ads/zzigl;)Lcom/google/android/gms/internal/ads/zzihj;

    .line 21
    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzf()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zze:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 2
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcbv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcbv;-><init>(Lcom/google/android/gms/internal/ads/zzcbz;)V

    .line 3
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    .line 4
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgyw;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcei;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v5, 0xa

    .line 5
    invoke-static {v1, v5, v6, v2, v4}, Lcom/google/android/gms/internal/ads/zzgzo;->zzi(Lcom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcbu;

    .line 6
    invoke-direct {v4, p0, v2}, Lcom/google/android/gms/internal/ads/zzcbu;-><init>(Lcom/google/android/gms/internal/ads/zzcbz;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzgzo;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgzl;Ljava/util/concurrent/Executor;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcbz;->zzc:Ljava/util/List;

    .line 7
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic zzg(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzian;->zzA()Lcom/google/android/gms/internal/ads/zziam;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzihf;->zzc()Lcom/google/android/gms/internal/ads/zzihd;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziam;->zza()Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzihd;->zzb(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzihd;

    const-string v0, "image/png"

    .line 5
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzihd;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzihd;

    const/4 v0, 0x2

    .line 6
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzihd;->zzc(I)Lcom/google/android/gms/internal/ads/zzihd;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihf;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzifv;->zzj(Lcom/google/android/gms/internal/ads/zzihf;)Lcom/google/android/gms/internal/ads/zzifv;

    .line 9
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic zzh(Ljava/util/Map;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 11

    .line 11
    :try_start_0
    const-string v0, "Cannot find the corresponding resource object for "

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "matches"

    .line 4
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zze:Ljava/util/LinkedHashMap;

    .line 6
    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzihj;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_2

    .line 9
    :try_start_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Ljava/lang/String;)V

    .line 10
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_3

    .line 7
    invoke-virtual {v4, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "threat_type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzihj;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzihj;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zza:Z

    if-lez v6, :cond_4

    move v3, v1

    :cond_4
    or-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zza:Z

    .line 8
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 34
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    .line 8
    :goto_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catch_0
    move-exception p1

    goto/16 :goto_8

    .line 11
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zza:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter p1
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzifv;->zzn(I)Lcom/google/android/gms/internal/ads/zzifv;

    .line 12
    monitor-exit p1

    goto :goto_4

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :cond_6
    :goto_4
    const-string p1, "Sending SB report\n  url: "

    const-string v0, "\n  clickUrl: "

    const-string v2, "\n  resources: \n"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zza:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzccb;->zzg:Z

    if-nez v5, :cond_9

    :cond_7
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzm:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-boolean v5, v5, Lcom/google/android/gms/internal/ads/zzccb;->zzf:Z

    if-nez v5, :cond_9

    :cond_8
    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzccb;->zzd:Z

    if-eqz v3, :cond_e

    :cond_9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzj:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zze:Ljava/util/LinkedHashMap;

    .line 14
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzihj;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    .line 15
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzihk;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzifv;->zzf(Lcom/google/android/gms/internal/ads/zzihk;)Lcom/google/android/gms/internal/ads/zzifv;

    goto :goto_5

    :catchall_3
    move-exception p1

    goto/16 :goto_7

    :cond_a
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzd:Lcom/google/android/gms/internal/ads/zzifv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzf:Ljava/util/List;

    .line 16
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzifv;->zzl(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzifv;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzg:Ljava/util/List;

    .line 17
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzifv;->zzm(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzifv;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzccd;->zzb()Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzifv;->zza()Ljava/lang/String;

    move-result-object v7

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzifv;->zzg()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x26

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0xf

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzifv;->zze()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzihk;

    const-string v2, "    ["

    .line 22
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzihk;->zzd()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    .line 24
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzihk;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzccd;->zza(Ljava/lang/String;)V

    .line 27
    :cond_c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzihz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhzw;->zzaN()[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzi:Lcom/google/android/gms/internal/ads/zzccb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzccb;->zzb:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/ads/internal/util/zzbl;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcbz;->zzh:Landroid/content/Context;

    .line 28
    invoke-direct {v2, v5}, Lcom/google/android/gms/ads/internal/util/zzbl;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v2, v1, v0, v4, p1}, Lcom/google/android/gms/ads/internal/util/zzbl;->zzb(ILjava/lang/String;Ljava/util/Map;[B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzccd;->zzb()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbx;->zza:Lcom/google/android/gms/internal/ads/zzcbx;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zza:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcbw;->zza:Lcom/google/android/gms/internal/ads/zzcbw;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcei;->zzg:Lcom/google/android/gms/internal/ads/zzgzy;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgqt;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 27
    monitor-exit v3

    return-object p1

    .line 33
    :goto_7
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p1

    .line 13
    :cond_e
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgzo;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    return-object p1

    .line 35
    :goto_8
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbjm;->zza:Lcom/google/android/gms/internal/ads/zzbio;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbio;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 36
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v0, "Failed to get SafeBrowsing metadata"

    .line 37
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Safebrowsing report transmission failed."

    .line 38
    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgzo;->zzc(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
