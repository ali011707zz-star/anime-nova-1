.class public final Lcom/google/android/gms/internal/ads/zzef;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:I

.field private zzb:[J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    array-length v0, p2

    if-ne p1, v0, :cond_0

    add-int/2addr p1, p1

    .line 2
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    const-wide/16 v0, 0x0

    .line 3
    aput-wide v0, p1, p2

    return-void
.end method

.method public final zzb([J)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    .line 2
    array-length v3, v2

    if-le v0, v3, :cond_0

    add-int/2addr v3, v3

    .line 3
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    const/4 v4, 0x0

    .line 4
    invoke-static {p1, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    return-void
.end method

.method public final zzc(I)J
    .locals 5

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zzb:[J

    .line 2
    aget-wide v1, v0, p1

    return-wide v1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid index "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzef;->zza:I

    return v0
.end method
