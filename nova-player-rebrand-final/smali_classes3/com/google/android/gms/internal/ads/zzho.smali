.class public final Lcom/google/android/gms/internal/ads/zzho;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/io/RandomAccessFile;

.field private zzb:Landroid/net/Uri;

.field private zzc:J

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 5

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zza:Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzfj;->zza:Ljava/lang/String;

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhn;

    const/16 p3, 0x7d0

    .line 2
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 11

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzb:Landroid/net/Uri;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzf(Lcom/google/android/gms/internal/ads/zzhf;)V

    const/4 v1, 0x1

    const/16 v2, 0x7d6

    const/16 v3, 0x7d0

    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    const-string v7, "r"

    invoke-direct {v4, v5, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zza:Ljava/io/RandomAccessFile;

    .line 4
    :try_start_1
    iget-wide v7, p1, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 5
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    const-wide/16 v9, -0x1

    cmp-long v0, v4, v9

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zza:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v7

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzd:Z

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzc:J

    return-wide v0

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhn;

    const/16 v0, 0x7d8

    .line 7
    invoke-direct {p1, v6, v6, v0}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 9
    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    .line 6
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    .line 9
    :cond_2
    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    .line 10
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 14
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    .line 11
    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 12
    :goto_4
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhn;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/system/ErrnoException;

    const/16 v3, 0x7d5

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Landroid/system/ErrnoException;

    iget v1, v1, Landroid/system/ErrnoException;->errno:I

    sget v4, Landroid/system/OsConstants;->EACCES:I

    if-ne v1, v4, :cond_3

    goto :goto_5

    :cond_3
    move v2, v3

    .line 17
    :goto_5
    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 12
    :cond_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhn;

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    const-string v0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    .line 14
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzb:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzho;->zza:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zza:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzd:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzd:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_1
    return-void

    :goto_1
    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhn;

    const/16 v4, 0x7d0

    .line 2
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzhn;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zza:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzho;->zzd:Z

    if-nez v0, :cond_2

    goto :goto_3

    .line 4
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzho;->zzd:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    .line 4
    :goto_3
    throw v2
.end method
