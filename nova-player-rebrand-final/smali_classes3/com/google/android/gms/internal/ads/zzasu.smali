.class public final Lcom/google/android/gms/internal/ads/zzasu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzari;


# instance fields
.field private final zza:Ljava/util/Map;

.field private zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzast;

.field private final zzd:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzast;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p2, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzc:Lcom/google/android/gms/internal/ads/zzast;

    const/high16 p1, 0x500000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzd:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {p2, v2, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    new-instance p2, Lcom/google/android/gms/internal/ads/zzasq;

    .line 3
    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzasq;-><init>(Lcom/google/android/gms/internal/ads/zzasu;Ljava/io/File;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzc:Lcom/google/android/gms/internal/ads/zzast;

    const/high16 p1, 0x1400000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzd:I

    return-void
.end method

.method static zzg(Lcom/google/android/gms/internal/ads/zzass;J)[B
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzass;->zza()J

    move-result-wide v1

    if-ltz v0, :cond_0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    long-to-int v0, p1

    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    new-array p1, v0, [B

    new-instance p2, Ljava/io/DataInputStream;

    .line 2
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2, p1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1

    .line 1
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v0, v3

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "streamToBytes length="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxLength="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static zzh(Ljava/io/OutputStream;I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    .line 4
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zzi(Ljava/io/InputStream;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method static zzj(Ljava/io/OutputStream;J)V
    .locals 2

    long-to-int v0, p1

    int-to-byte v0, v0

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 5
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 6
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 8
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static zzk(Ljava/io/InputStream;)J
    .locals 18

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    .line 3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v4

    int-to-long v4, v4

    .line 4
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v6

    int-to-long v6, v6

    .line 5
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v8

    int-to-long v8, v8

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v10

    int-to-long v10, v10

    .line 7
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v12

    int-to-long v12, v12

    .line 8
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzp(Ljava/io/InputStream;)I

    move-result v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    and-long v4, v4, v16

    and-long v6, v6, v16

    and-long v8, v8, v16

    and-long v10, v10, v16

    and-long v12, v12, v16

    and-long v14, v14, v16

    and-long v0, v0, v16

    const/16 v16, 0x8

    shl-long v2, v2, v16

    or-long/2addr v0, v2

    const/16 v2, 0x10

    shl-long v2, v4, v2

    or-long/2addr v0, v2

    const/16 v2, 0x18

    shl-long v2, v6, v2

    or-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long v2, v8, v2

    or-long/2addr v0, v2

    const/16 v2, 0x28

    shl-long v2, v10, v2

    or-long/2addr v0, v2

    const/16 v2, 0x30

    shl-long v2, v12, v2

    or-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long v2, v14, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static zzl(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    int-to-long v1, v0

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzasu;->zzj(Ljava/io/OutputStream;J)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method static zzm(Lcom/google/android/gms/internal/ads/zzass;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzasu;->zzk(Ljava/io/InputStream;)J

    move-result-wide v0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzasu;->zzg(Lcom/google/android/gms/internal/ads/zzass;J)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private final zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasr;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    iget-wide v3, p2, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzasr;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    iget-wide v4, p2, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    .line 3
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    .line 4
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzo(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzasr;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    :cond_0
    return-void
.end method

.method private static zzp(Ljava/io/InputStream;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 2
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static final zzq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarh;
    .locals 12

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_2
    new-instance v6, Lcom/google/android/gms/internal/ads/zzass;

    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    .line 3
    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzass;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5
    :try_start_3
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzasr;->zza(Lcom/google/android/gms/internal/ads/zzass;)Lcom/google/android/gms/internal/ads/zzasr;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Ljava/lang/String;

    .line 6
    invoke-static {p1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v0, "%s: key=%s, found=%s"

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v5

    aput-object p1, v9, v4

    aput-object v7, v9, v3

    .line 8
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzass;->zza()J

    move-result-wide v7

    .line 11
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzasu;->zzg(Lcom/google/android/gms/internal/ads/zzass;J)[B

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzarh;

    .line 12
    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzarh;-><init>()V

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzarh;->zza:[B

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Ljava/lang/String;

    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzarh;->zzb:Ljava/lang/String;

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzasr;->zzd:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzarh;->zzc:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzasr;->zze:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzarh;->zzd:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzasr;->zzf:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzarh;->zze:J

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzasr;->zzg:J

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzarh;->zzf:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzasr;->zzh:Ljava/util/List;

    new-instance v7, Ljava/util/TreeMap;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 13
    invoke-direct {v7, v9}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzarq;

    .line 15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzarq;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzarq;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-object v7, v8, Lcom/google/android/gms/internal/ads/zzarh;->zzg:Ljava/util/Map;

    .line 16
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzarh;->zzh:Ljava/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 10
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v8

    :goto_1
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 17
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 18
    :goto_2
    :try_start_8
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v5

    aput-object v0, v3, v4

    const-string v0, "%s: %s"

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasu;->zze(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarh;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzarh;->zza:[B

    array-length v5, v5

    int-to-long v6, v5

    add-long/2addr v3, v6

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzd:I

    int-to-long v7, v6

    cmp-long v3, v3, v7

    const v4, 0x3f666666    # 0.9f

    if-lez v3, :cond_0

    int-to-float v3, v5

    int-to-float v5, v6

    mul-float/2addr v5, v4

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_a

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    .line 3
    :try_start_1
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    .line 4
    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzasr;

    .line 5
    invoke-direct {v8, v0, v2}, Lcom/google/android/gms/internal/ads/zzasr;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarh;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v9, 0x20150306

    .line 6
    :try_start_2
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzasu;->zzh(Ljava/io/OutputStream;I)V

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Ljava/lang/String;

    .line 7
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzasu;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zzc:Ljava/lang/String;

    if-nez v9, :cond_1

    const-string v9, ""

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move/from16 v16, v6

    const/4 v8, 0x1

    goto/16 :goto_6

    .line 8
    :cond_1
    :goto_0
    invoke-static {v7, v9}, Lcom/google/android/gms/internal/ads/zzasu;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zzd:J

    .line 9
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzasu;->zzj(Ljava/io/OutputStream;J)V

    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zze:J

    .line 10
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzasu;->zzj(Ljava/io/OutputStream;J)V

    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zzf:J

    .line 11
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzasu;->zzj(Ljava/io/OutputStream;J)V

    iget-wide v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zzg:J

    .line 12
    invoke-static {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzasu;->zzj(Ljava/io/OutputStream;J)V

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zzh:Ljava/util/List;

    if-eqz v9, :cond_2

    .line 13
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzasu;->zzh(Ljava/io/OutputStream;I)V

    .line 14
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzarq;

    .line 15
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzarq;->zza()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Lcom/google/android/gms/internal/ads/zzasu;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzarq;->zzb()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzasu;->zzl(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_2
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzasu;->zzh(Ljava/io/OutputStream;I)V

    .line 18
    :cond_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzarh;->zza:[B

    .line 23
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V

    .line 24
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 25
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    .line 26
    invoke-direct {v1, v0, v8}, Lcom/google/android/gms/internal/ads/zzasu;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasr;)V

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzd:I

    int-to-long v9, v0

    cmp-long v2, v7, v9

    if-gez v2, :cond_4

    goto/16 :goto_8

    .line 27
    :cond_4
    sget-boolean v2, Lcom/google/android/gms/internal/ads/zzask;->zzb:Z

    if-eqz v2, :cond_5

    const-string v7, "Pruning old cache entries."

    new-array v8, v6, [Ljava/lang/Object;

    .line 28
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzask;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move/from16 v16, v6

    goto/16 :goto_7

    :cond_5
    :goto_2
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    .line 30
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v12, v6

    .line 31
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v14, 0x2

    if-eqz v13, :cond_8

    .line 32
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzasr;

    .line 34
    iget-object v15, v13, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzasu;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v16
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v16, :cond_6

    move/from16 v16, v6

    move-wide/from16 p1, v7

    :try_start_4
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    move/from16 v17, v4

    const/4 v8, 0x1

    .line 35
    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    sub-long/2addr v6, v4

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    goto :goto_4

    :cond_6
    move/from16 v17, v4

    move/from16 v16, v6

    move-wide/from16 p1, v7

    const/4 v8, 0x1

    .line 40
    const-string v4, "Could not delete cache entry for key=%s, filename=%s"

    .line 36
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzasu;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v14, [Ljava/lang/Object;

    aput-object v15, v6, v16

    aput-object v5, v6, v8

    .line 37
    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v12, v12, 0x1

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    long-to-float v4, v4

    int-to-float v5, v0

    mul-float v5, v5, v17

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    goto :goto_5

    :cond_7
    move-wide/from16 v7, p1

    move/from16 v6, v16

    move/from16 v4, v17

    goto :goto_3

    :cond_8
    move/from16 v16, v6

    move-wide/from16 p1, v7

    const/4 v8, 0x1

    :goto_5
    if-eqz v2, :cond_a

    const-string v0, "pruned %d files, %d bytes, %d ms"

    .line 39
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    sub-long v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v16

    aput-object v4, v6, v8

    aput-object v5, v6, v14

    .line 40
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzask;->zza(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 46
    :goto_6
    :try_start_5
    const-string v2, "%s"

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v16

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    const-string v0, "Failed to write header for %s"

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v16

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    .line 22
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 41
    :catch_2
    :goto_7
    :try_start_6
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_9

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v16

    const-string v0, "Could not clean up file %s"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzc:Lcom/google/android/gms/internal/ads/zzast;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zza()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    move/from16 v2, v16

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Re-initializing cache after external clearing."

    .line 44
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzasu;->zza:Ljava/util/Map;

    .line 45
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzasu;->zzb:J

    .line 46
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasu;->zzc()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    .line 26
    :cond_a
    :goto_8
    monitor-exit p0

    return-void

    :goto_9
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzc()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzc:Lcom/google/android/gms/internal/ads/zzast;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zza()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const-string v0, "Unable to create cache dir %s"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzask;->zzc(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 5
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 6
    aget-object v1, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    new-instance v5, Lcom/google/android/gms/internal/ads/zzass;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    .line 8
    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzass;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    :try_start_3
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzasr;->zza(Lcom/google/android/gms/internal/ads/zzass;)Lcom/google/android/gms/internal/ads/zzasr;

    move-result-object v6

    iput-wide v3, v6, Lcom/google/android/gms/internal/ads/zzasr;->zza:J

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzasr;->zzb:Ljava/lang/String;

    .line 11
    invoke-direct {p0, v3, v6}, Lcom/google/android/gms/internal/ads/zzasu;->zzn(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzasr;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 12
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 13
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 14
    :catch_0
    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasu;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarh;

    move-result-object p2

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzarh;->zzf:J

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzarh;->zze:J

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzasu;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarh;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzf(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzo(Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const-string p1, "Could not delete cache entry for key=%s, filename=%s"

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzask;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzf(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasu;->zzc:Lcom/google/android/gms/internal/ads/zzast;

    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzast;->zza()Ljava/io/File;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzasu;->zzq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
