.class public abstract Lcom/google/android/gms/internal/ads/zzgyc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# direct methods
.method public static varargs zza([[J)[J
    .locals 7

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, p0, v4

    .line 2
    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    long-to-int v0, v2

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    const-string v5, "the total number of elements (%s) in the arrays must fit in an int"

    .line 3
    invoke-static {v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzgrc;->zze(ZLjava/lang/String;J)V

    .line 4
    new-array v0, v0, [J

    .line 5
    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    .line 6
    array-length v6, v5

    invoke-static {v5, v1, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-object v0
.end method
