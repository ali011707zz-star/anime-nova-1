.class public abstract Lcom/google/android/gms/internal/ads/zzgxm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static zza([BLjava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzgxj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgxb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzgxb;-><init>()V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgup;->zzp([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzgxk;->zza(Ljava/io/File;Lcom/google/android/gms/internal/ads/zzgup;Lcom/google/android/gms/internal/ads/zzgxb;)Ljava/io/FileOutputStream;

    move-result-object p1

    .line 4
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static zzb(Ljava/io/File;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unable to create parent directories of "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzc(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Source %s and destination %s must be different"

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzh(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzgrc;->zzh(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgxl;

    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzgxl;-><init>(Ljava/io/File;[B)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzgxj;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgxb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzgxb;-><init>()V

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgup;->zzp([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgup;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgxi;->zza()Lcom/google/android/gms/internal/ads/zzgxi;

    move-result-object v4

    .line 8
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxc;->zza()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 9
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgxk;->zza(Ljava/io/File;Lcom/google/android/gms/internal/ads/zzgup;Lcom/google/android/gms/internal/ads/zzgxb;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 10
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzgxi;->zzb(Ljava/io/Closeable;)Ljava/io/Closeable;

    .line 11
    sget v3, Lcom/google/android/gms/internal/ads/zzgxf;->$r8$clinit:I

    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 12
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgxi;->close()V

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    const-string v1, "Unable to delete "

    if-nez v0, :cond_0

    new-instance p0, Ljava/io/IOException;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {v2, v3, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 19
    :try_start_2
    invoke-virtual {v4, p0}, Lcom/google/android/gms/internal/ads/zzgxi;->zzc(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgxi;->close()V

    .line 20
    throw p0

    :cond_2
    return-void
.end method
