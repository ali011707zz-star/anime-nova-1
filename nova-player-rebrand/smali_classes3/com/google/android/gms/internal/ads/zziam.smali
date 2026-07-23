.class public final Lcom/google/android/gms/internal/ads/zziam;
.super Ljava/io/OutputStream;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"


# static fields
.field private static final zza:[B


# instance fields
.field private final zzb:I

.field private final zzc:Ljava/util/ArrayList;

.field private zzd:I

.field private zze:[B

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zziam;->zza:[B

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/16 p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzb:I

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzc:Ljava/util/ArrayList;

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    return-void
.end method

.method private final zzc(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzial;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzial;-><init>([B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzc:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    .line 2
    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzd:I

    ushr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzb:I

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zziam;->zzb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "<ByteString.Output@%s size=%d>"

    .line 2
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized write(I)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zziam;->zzc(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    int-to-byte p1, p1

    .line 3
    aput-byte p1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    array-length v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    sub-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 5
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 6
    :cond_0
    :try_start_1
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zziam;->zzc(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    const/4 v1, 0x0

    .line 8
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zza()Lcom/google/android/gms/internal/ads/zzian;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    if-lez v0, :cond_1

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzc:Ljava/util/ArrayList;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzial;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzial;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzc:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzial;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzial;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zziam;->zza:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zze:[B

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzc:Ljava/util/ArrayList;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzian;->zzw(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzian;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzb()I
    .locals 2

    .line 0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zziam;->zzd:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zziam;->zzf:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
