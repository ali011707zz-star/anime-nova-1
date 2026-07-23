.class public abstract Lcom/facebook/ads/redexgen/X/46;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[B

.field public static final A03:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 167
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "iRbt0o504Arwoby5JHXaSNdVCCanqX3Z"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ASbg6tg4kzyOiw5fOrTV48A6bdNu61QQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VJNj5t4vCwi8aTooUiCSn6hrJqJmgDCA"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jF3QiYzhpB2jmiLUWXOlRV8C8MCMW37s"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "04l0YgLQyX7hnS2Tq5aYjCPcYldth61t"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "viWvpQwMaKSmF6BaYaPf73TpnglWhe5o"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UZSp3mVbJo9"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "8WqjnkkE7kcSKcejfHJHrMyyjo529bht"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/46;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/46;->A05()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/46;->A02:[B

    .line 168
    const/4 v2, 0x6

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x7

    const/4 v1, 0x1

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x5

    const/4 v1, 0x1

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0, v5, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/46;->A03:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public static A00([B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11167
    new-instance v1, Lcom/facebook/ads/redexgen/X/4v;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/4v;-><init>([B)V

    .line 11168
    .local v0, "byteArray":Lcom/facebook/ads/redexgen/X/4v;
    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 11169
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result p0

    .line 11170
    .local v1, "channelCount":I
    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 11171
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    .line 11172
    .local p0, "sampleRate":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    .line 11173
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    .line 11174
    const/16 v2, 0x8

    const/16 v1, 0x11

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/46;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x4a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03(IZII[II)Ljava/lang/String;
    .locals 6

    .line 11175
    sget-object v0, Lcom/facebook/ads/redexgen/X/46;->A03:[Ljava/lang/String;

    aget-object p0, v0, p0

    .line 11176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 11177
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11178
    if-eqz p1, :cond_0

    const/16 v0, 0x48

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    .line 11179
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p0, v3, p2

    const/4 p1, 0x1

    aput-object v5, v3, p1

    const/4 v0, 0x2

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    const/4 v0, 0x4

    aput-object v1, v3, v0

    .line 11180
    const/16 v2, 0x19

    const/16 v1, 0x11

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11181
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v5, p4

    .line 11182
    .local v2, "trailingZeroIndex":I
    :goto_1
    if-lez v5, :cond_1

    add-int/lit8 v0, v5, -0x1

    aget v0, p4, v0

    if-nez v0, :cond_1

    .line 11183
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 11184
    :cond_0
    const/16 v0, 0x4c

    goto :goto_0

    .line 11185
    :cond_1
    const/4 v4, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v4, v5, :cond_2

    .line 11186
    aget v0, p4, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, p1, [Ljava/lang/Object;

    aput-object v0, v3, p2

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/46;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11187
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 11188
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A04(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 11189
    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [B

    if-eqz p0, :cond_0

    aput-byte v1, v0, v2

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    aput-byte v2, v0, v2

    goto :goto_0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/46;->A00:[B

    return-void

    :array_0
    .array-data 1
        -0x31t
        -0x3at
        -0x2ft
        -0x2dt
        -0x7t
        -0x5t
        -0x54t
        -0x4at
        0xdt
        0x22t
        0xft
        -0x23t
        -0x26t
        -0x2ft
        -0x24t
        -0x22t
        0x4t
        -0x2ft
        -0x24t
        -0x22t
        0x4t
        -0x2ft
        -0x24t
        -0x22t
        0x4t
        -0x2bt
        -0x1dt
        -0x30t
        -0x62t
        -0x65t
        -0x6et
        -0x20t
        -0x6et
        -0x2ft
        -0x65t
        -0x6et
        -0x3bt
        -0x65t
        -0x6et
        -0x30t
        -0x6et
        -0x2ft
    .end array-data
.end method

.method public static A06(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 11190
    .local v3, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    .line 11191
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v4, :cond_1

    .line 11192
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v3, v0, v5

    sget-object v1, Lcom/facebook/ads/redexgen/X/46;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/46;->A01:[Ljava/lang/String;

    const-string v1, "7rG63N7qIw7"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ne v3, v4, :cond_1

    const/4 v5, 0x1

    .line 11193
    :cond_1
    return v5
.end method

.method public static A07([BII)[B
    .locals 4

    .line 11194
    sget-object v0, Lcom/facebook/ads/redexgen/X/46;->A02:[B

    array-length v0, v0

    add-int/2addr v0, p2

    new-array v3, v0, [B

    .line 11195
    .local v0, "nalUnit":[B
    sget-object v2, Lcom/facebook/ads/redexgen/X/46;->A02:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/46;->A02:[B

    array-length v1, v0

    const/4 v0, 0x0

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11196
    sget-object v0, Lcom/facebook/ads/redexgen/X/46;->A02:[B

    array-length v0, v0

    invoke-static {p0, p1, v3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11197
    return-object v3
.end method
