.class public final Lcom/google/ads/interactivemedia/v3/internal/zzagb;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method public static zza([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_3

    .line 1
    :cond_0
    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-nez p1, :cond_2

    :goto_0
    array-length p1, p0

    if-ge v1, p1, :cond_4

    .line 3
    aget-object p1, p0, v1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 2
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    const/4 p0, -0x1

    if-eq v1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    return v0
.end method
