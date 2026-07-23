.class public final Lcom/google/android/gms/internal/ads/zzhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhb;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/List;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzd:Lcom/google/android/gms/internal/ads/zzhb;

.field private zze:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzf:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzg:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzh:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzi:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzj:Lcom/google/android/gms/internal/ads/zzhb;

.field private zzk:Lcom/google/android/gms/internal/ads/zzhb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzhb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zza:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Lcom/google/android/gms/internal/ads/zzhb;

    new-instance p1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Ljava/util/List;

    return-void
.end method

.method private final zzf()Lcom/google/android/gms/internal/ads/zzhb;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zze:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgs;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zze:Lcom/google/android/gms/internal/ads/zzhb;

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zze:Lcom/google/android/gms/internal/ads/zzhb;

    return-object v0
.end method

.method private final zzg(Lcom/google/android/gms/internal/ads/zzhb;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhz;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzhb;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzhb;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzj;->zza([BII)I

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgrc;->zzi(Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "file"

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_4

    .line 9
    :cond_1
    const-string v0, "asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto/16 :goto_5

    :cond_2
    const-string v0, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzf:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgy;

    .line 12
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzf:Lcom/google/android/gms/internal/ads/zzhb;

    .line 13
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzf:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto/16 :goto_5

    :cond_4
    const-string v0, "rtmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_5

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    .line 17
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto/16 :goto_5

    :cond_6
    const-string v0, "udp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzib;

    const/16 v1, 0x7d0

    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzib;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    .line 20
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto/16 :goto_5

    :cond_8
    const-string v0, "data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgz;

    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto :goto_5

    :cond_a
    const-string v0, "rawresource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "android.resource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3

    .line 24
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Lcom/google/android/gms/internal/ads/zzhb;

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto :goto_5

    .line 22
    :cond_c
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzj:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zza:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhx;

    .line 23
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzj:Lcom/google/android/gms/internal/ads/zzhb;

    .line 24
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzj:Lcom/google/android/gms/internal/ads/zzhb;

    goto :goto_2

    .line 6
    :cond_e
    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v1, "/android_asset/"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhh;->zzf()Lcom/google/android/gms/internal/ads/zzhb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    goto :goto_5

    .line 25
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzd:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzho;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzho;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzd:Lcom/google/android/gms/internal/ads/zzhb;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhh;->zzg(Lcom/google/android/gms/internal/ads/zzhb;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzd:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    .line 10
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    .line 25
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhb;->zzb(Lcom/google/android/gms/internal/ads/zzhf;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzc()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    .line 2
    throw v0

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzc:Lcom/google/android/gms/internal/ads/zzhb;

    .line 1
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhb;->zze(Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzd:Lcom/google/android/gms/internal/ads/zzhb;

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zze:Lcom/google/android/gms/internal/ads/zzhb;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzf:Lcom/google/android/gms/internal/ads/zzhb;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzg:Lcom/google/android/gms/internal/ads/zzhb;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzh:Lcom/google/android/gms/internal/ads/zzhb;

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzi:Lcom/google/android/gms/internal/ads/zzhb;

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzj:Lcom/google/android/gms/internal/ads/zzhb;

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhh;->zzh(Lcom/google/android/gms/internal/ads/zzhb;Lcom/google/android/gms/internal/ads/zzhz;)V

    return-void
.end method

.method public final zzj()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhh;->zzk:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhb;->zzj()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
