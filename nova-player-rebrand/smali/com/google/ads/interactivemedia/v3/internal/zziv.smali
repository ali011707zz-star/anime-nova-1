.class public final Lcom/google/ads/interactivemedia/v3/internal/zziv;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zzc:Ljava/lang/String; = "zziv"


# instance fields
.field protected final zza:Landroid/content/Context;

.field protected zzb:Z

.field private zzd:Ljava/util/concurrent/ExecutorService;

.field private zze:Ldalvik/system/DexClassLoader;

.field private zzf:Lcom/google/ads/interactivemedia/v3/internal/zzia;

.field private zzg:[B

.field private volatile zzh:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

.field private volatile zzi:Z

.field private final zzj:Z

.field private volatile zzk:Lcom/google/ads/interactivemedia/v3/internal/zzba;

.field private zzl:Ljava/util/concurrent/Future;

.field private zzm:Lcom/google/ads/interactivemedia/v3/internal/zzhv;

.field private zzn:Lcom/google/ads/interactivemedia/v3/internal/zzhi;

.field private final zzo:Ljava/util/Map;

.field private zzp:Z

.field private zzq:Lcom/google/ads/interactivemedia/v3/internal/zzio;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzh:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzi:Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzba;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzl:Ljava/util/concurrent/Future;

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzp:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzj:Z

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzo:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzio;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzio;

    .line 3
    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzio;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzio;

    return-void
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/google/ads/interactivemedia/v3/internal/zzhv;)Lcom/google/ads/interactivemedia/v3/internal/zziv;
    .locals 9

    .line 1
    const-string p1, "%s/%s.dex"

    const-string p2, "1754603592408"

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;-><init>(Landroid/content/Context;)V

    :try_start_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzir;

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzir;-><init>()V

    .line 3
    invoke-static {p0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    iput-object p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd:Ljava/util/concurrent/ExecutorService;

    iput-boolean p3, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzi:Z

    if-eqz p3, :cond_0

    iget-object p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zzis;

    .line 4
    invoke-direct {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzis;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    iget-object p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lcom/google/ads/interactivemedia/v3/internal/zziu;

    .line 5
    invoke-direct {p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/zziu;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;)V

    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_0 .. :try_end_0} :catch_7

    const/4 p0, 0x1

    const/4 p3, 0x0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    move v1, p0

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-eqz p4, :cond_2

    :try_start_2
    iput-object p4, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzhv;

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v0, p3, p0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzp(IZ)V

    .line 10
    :goto_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zziy;->zzd()Z

    move-result p4

    if-eqz p4, :cond_4

    sget-object p4, Lcom/google/ads/interactivemedia/v3/internal/zzlv;->zzx:Lcom/google/ads/interactivemedia/v3/internal/zzlm;

    .line 11
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzld;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzlt;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzlt;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzlm;)Ljava/lang/Object;

    move-result-object p4

    .line 10
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Task Context initialization must not be called from the UI thread."

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    :goto_2
    new-instance p4, Lcom/google/ads/interactivemedia/v3/internal/zzia;

    const/4 v1, 0x0

    invoke-direct {p4, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;-><init>(Ljava/security/SecureRandom;)V

    iput-object p4, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzia;
    :try_end_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_2 .. :try_end_2} :catch_7

    :try_start_3
    const-string v2, "JcrU7fy5RNbMaDqzZNwiOwL0nfU2rS7VBZgzra8NDIE="
    :try_end_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_3 .. :try_end_3} :catch_7

    .line 12
    :try_start_4
    invoke-static {v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzgh;->zzb(Ljava/lang/String;Z)[B

    move-result-object v2

    .line 13
    array-length v3, v2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_a

    const/4 v3, 0x4

    const/16 v4, 0x10

    .line 15
    invoke-static {v2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-array v3, v4, [B

    .line 16
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move v2, p3

    :goto_3
    if-ge v2, v4, :cond_5

    .line 17
    aget-byte v5, v3, v2

    xor-int/lit8 v5, v5, 0x44

    int-to-byte v5, v5

    aput-byte v5, v3, v2
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_4 .. :try_end_4} :catch_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    goto/16 :goto_b

    :catch_1
    move-exception p0

    goto/16 :goto_a

    :cond_5
    :try_start_5
    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzg:[B
    :try_end_5
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_5 .. :try_end_5} :catch_7

    :try_start_6
    iget-object p4, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    .line 18
    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_7

    const-string v2, "dex"

    .line 19
    invoke-virtual {p4, v2, p3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 38
    :cond_6
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 37
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>()V

    throw p0

    :catch_2
    move-exception p0

    goto/16 :goto_6

    :catch_3
    move-exception p0

    goto/16 :goto_7

    :catch_4
    move-exception p0

    goto/16 :goto_8

    :catch_5
    move-exception p0

    goto/16 :goto_9

    .line 19
    :cond_7
    :goto_4
    const-string v3, "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"

    new-instance v4, Ljava/io/File;

    const-string v5, "%s/%s.jar"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, p3

    aput-object p2, v7, p0

    .line 20
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzg:[B

    .line 22
    invoke-virtual {v5, v7, v3}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzb([BLjava/lang/String;)[B

    move-result-object v3

    .line 23
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    .line 24
    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    if-lt v7, v8, :cond_8

    .line 25
    invoke-virtual {v4}, Ljava/io/File;->setReadOnly()Z

    .line 26
    :cond_8
    array-length v7, v3

    invoke-virtual {v5, v3, p3, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 27
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 28
    :cond_9
    invoke-direct {v0, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzu(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_6 .. :try_end_6} :catch_7

    .line 29
    :try_start_7
    new-instance v3, Ldalvik/system/DexClassLoader;

    .line 30
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    invoke-direct {v3, v5, v7, v1, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zze:Ldalvik/system/DexClassLoader;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 32
    :try_start_8
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    .line 33
    invoke-direct {v0, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzt(Ljava/io/File;Ljava/lang/String;)V

    new-array p4, v6, [Ljava/lang/Object;

    aput-object v2, p4, p3

    aput-object p2, p4, p0

    .line 34
    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzx(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_8 .. :try_end_8} :catch_7

    .line 36
    :try_start_9
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;)V

    iput-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    iput-boolean p0, v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzp:Z
    :try_end_9
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_c

    :catchall_1
    move-exception p4

    goto :goto_5

    :catch_6
    move-exception p4

    .line 37
    :try_start_a
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 31
    invoke-direct {v1, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 32
    :goto_5
    :try_start_b
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    .line 33
    invoke-direct {v0, v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzt(Ljava/io/File;Ljava/lang/String;)V

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, p3

    aput-object p2, v1, p0

    .line 34
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzx(Ljava/lang/String;)V

    .line 35
    throw p4
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_b .. :try_end_b} :catch_7

    .line 39
    :goto_6
    :try_start_c
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 38
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 40
    :goto_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 39
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 41
    :goto_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 40
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 42
    :goto_9
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 41
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_c
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_c .. :try_end_c} :catch_7

    .line 13
    :cond_a
    :try_start_d
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzhz;

    .line 14
    invoke-direct {p0, p4}, Lcom/google/ads/interactivemedia/v3/internal/zzhz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzia;)V

    throw p0
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_d .. :try_end_d} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_d .. :try_end_d} :catch_7

    .line 43
    :goto_a
    :try_start_e
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzhz;

    .line 42
    invoke-direct {p1, p4, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzhz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzia;Ljava/lang/Throwable;)V

    throw p1
    :try_end_e
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_e .. :try_end_e} :catch_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_e .. :try_end_e} :catch_7

    .line 44
    :goto_b
    :try_start_f
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzil;

    .line 43
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzil;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_f
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzil; {:try_start_f .. :try_end_f} :catch_7

    :catch_7
    :goto_c
    return-object v0
.end method

.method private final zzt(Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string p2, "test"

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    const-string v5, "1754603592408"

    aput-object v5, v2, v4

    const-string v6, "%s/%s.tmp"

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v2, Ljava/io/File;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object v5, v1, v4

    const-string p1, "%s/%s.dex"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_6

    long-to-int p1, v6

    .line 6
    new-array p1, p1, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 7
    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v6, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 10
    :catch_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    return-void

    :cond_1
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 11
    invoke-virtual {v6, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 12
    invoke-virtual {v6, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 13
    invoke-virtual {v6, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zzf()Lcom/google/ads/interactivemedia/v3/internal/zzbd;

    move-result-object p2

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 15
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    .line 16
    array-length v7, v6

    invoke-static {v6, v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzn([BII)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v6

    .line 15
    invoke-virtual {p2, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzbd;->zzd(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzbd;

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 18
    array-length v6, v5

    invoke-static {v5, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzn([BII)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v5

    .line 17
    invoke-virtual {p2, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzbd;->zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzbd;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzg:[B

    .line 19
    invoke-virtual {v5, v6, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zza([B[B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 20
    array-length v5, p1

    invoke-static {p1, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzn([BII)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v5

    .line 21
    invoke-virtual {p2, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzbd;->zza(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzbd;

    .line 22
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zze([B)[B

    move-result-object p1

    .line 23
    array-length v5, p1

    invoke-static {p1, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzn([BII)Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object p1

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbd;->zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)Lcom/google/ads/interactivemedia/v3/internal/zzbd;

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance p1, Ljava/io/FileOutputStream;

    .line 25
    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 26
    :try_start_4
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaco;->zzal()Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/zzbe;

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabg;->zzaq()[B

    move-result-object p2

    array-length v0, p2

    .line 27
    invoke-virtual {p1, p2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V

    .line 28
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 9
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 29
    :catch_1
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 10
    :catch_2
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p2

    :goto_0
    move-object v1, v4

    goto :goto_2

    :catch_3
    :goto_1
    move-object v1, v4

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    goto :goto_0

    :catch_4
    move-object p1, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_2
    if-eqz v1, :cond_2

    .line 9
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_2
    if-eqz p1, :cond_3

    .line 29
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 10
    :catch_6
    :cond_3
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    .line 30
    throw p2

    :catch_7
    move-object p1, v1

    :goto_3
    if-eqz v1, :cond_4

    .line 9
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_4
    if-eqz p1, :cond_5

    .line 29
    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 10
    :catch_9
    :cond_5
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private final zzu(Ljava/io/File;Ljava/lang/String;)Z
    .locals 9

    .line 1
    new-instance p2, Ljava/io/File;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    const-string v4, "1754603592408"

    aput-object v4, v1, v3

    const-string v5, "%s/%s.tmp"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Ljava/io/File;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v3

    const-string p1, "%s/%s.dex"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_1

    .line 6
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    return v2

    :catchall_0
    move-exception p2

    goto/16 :goto_4

    :cond_1
    long-to-int v0, v5

    .line 7
    new-array v0, v0, [B

    new-instance v5, Ljava/io/FileInputStream;

    .line 8
    invoke-direct {v5, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-gtz v6, :cond_2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzc:Ljava/lang/String;

    const-string v1, "Cannot read the cache data."

    .line 23
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v2

    :catchall_1
    move-exception p2

    goto/16 :goto_3

    .line 10
    :cond_2
    :try_start_3
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzace;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzace;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zze([BLcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzbe;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v6, Ljava/lang/String;

    .line 12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzq()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzq()[B

    move-result-object v4

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzq()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zzgn;->zze([B)[B

    move-result-object v6

    .line 15
    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zzd()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzq()[B

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzg:[B

    new-instance v6, Ljava/lang/String;

    .line 18
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbe;->zza()Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzq()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/zzia;->zzb([BLjava/lang/String;)[B

    move-result-object p2

    .line 19
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v0, Ljava/io/FileOutputStream;

    .line 20
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 21
    :try_start_5
    array-length p1, p2

    invoke-virtual {v0, p2, v2, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 11
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 22
    :catch_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    return v3

    :catchall_2
    move-exception p1

    move-object p2, p1

    :goto_0
    move-object p1, v5

    goto :goto_5

    :catch_3
    :goto_1
    move-object p1, v5

    goto :goto_6

    .line 17
    :cond_4
    :goto_2
    :try_start_8
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/google/ads/interactivemedia/v3/internal/zzhz; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 11
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    return v2

    :catch_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :catch_6
    return v2

    :goto_3
    move-object v0, p1

    goto :goto_0

    :catch_7
    move-object v0, p1

    goto :goto_1

    :goto_4
    move-object v0, p1

    :goto_5
    if-eqz p1, :cond_5

    :try_start_b
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    :catch_8
    :cond_5
    if-eqz v0, :cond_6

    .line 22
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 25
    :catch_9
    :cond_6
    throw p2

    :catch_a
    move-object v0, p1

    :goto_6
    if-eqz p1, :cond_7

    .line 11
    :try_start_d
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    :catch_b
    :cond_7
    if-eqz v0, :cond_8

    .line 22
    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c

    :catch_c
    :cond_8
    return v2
.end method

.method private final zzv()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzh:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzj:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->start()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzh:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzh:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    return-void
.end method

.method private static final zzw(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "File %s not found. No need for deletion"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static final zzx(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzw(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final zzb()Landroid/content/Context;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zza:Landroid/content/Context;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzp:Z

    return v0
.end method

.method public final zzd()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final zze()Ldalvik/system/DexClassLoader;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zze:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public final zzf()Lcom/google/ads/interactivemedia/v3/internal/zzia;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzia;

    return-object v0
.end method

.method public final zzg()[B
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzg:[B

    return-object v0
.end method

.method public final zzh()Lcom/google/ads/interactivemedia/v3/internal/zzhi;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    return-object v0
.end method

.method public final zzi()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb:Z

    return v0
.end method

.method public final zzj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzio;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzio;->zza()Z

    move-result v0

    return v0
.end method

.method final zzk()Lcom/google/ads/interactivemedia/v3/internal/zzio;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzq:Lcom/google/ads/interactivemedia/v3/internal/zzio;

    return-object v0
.end method

.method public final zzl()Lcom/google/ads/interactivemedia/v3/internal/zzba;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzhv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhv;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhv;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzhv;

    .line 3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhv;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzba;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzba;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzba;->zzh()Lcom/google/ads/interactivemedia/v3/internal/zzba;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzba;

    return-object v0
.end method

.method public final zzm()Ljava/util/concurrent/Future;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzm:Lcom/google/ads/interactivemedia/v3/internal/zzhv;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzhv;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzl:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public final varargs zzn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzo:Ljava/util/Map;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/zzki;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/zzki;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 1

    .line 1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzo:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/zzki;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzki;->zza()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method final zzp(IZ)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzb:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzd:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzit;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/zzit;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zziv;IZ)V

    .line 2
    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzl:Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzq()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzn:Lcom/google/ads/interactivemedia/v3/internal/zzhi;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzhi;->zzd()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method final synthetic zzr()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzv()V

    return-void
.end method

.method final synthetic zzs(Lcom/google/ads/interactivemedia/v3/internal/zzba;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zziv;->zzk:Lcom/google/ads/interactivemedia/v3/internal/zzba;

    return-void
.end method
