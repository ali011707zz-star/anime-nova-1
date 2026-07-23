.class public final Lcom/google/android/gms/internal/ads/zzeg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:[J

.field private zze:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/16 p1, 0xf

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    add-int/2addr p1, p1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    .line 3
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzd:[J

    .line 4
    array-length p1, p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zze:I

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzd:[J

    array-length v2, v1

    if-ne v0, v2, :cond_1

    add-int v0, v2, v2

    if-ltz v0, :cond_0

    .line 2
    new-array v0, v0, [J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    .line 3
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzd:[J

    .line 4
    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzb:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzd:[J

    .line 5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zze:I

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeg;->zze:I

    and-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzb:I

    .line 6
    aput-wide p1, v1, v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    return-void
.end method

.method public final zzb()J
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzd:[J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    .line 2
    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zze:I

    and-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    return-wide v3

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final zzc()J
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzd:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    .line 2
    aget-wide v1, v0, v1

    return-wide v1

    .line 1
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zza:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzb:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzeg;->zzc:I

    return-void
.end method
