.class public abstract Lcom/facebook/ads/redexgen/X/pN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$LexicographicalComparator;,
        Lcom/google/common/primitives/Chars$CharArrayAsList;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/pN;->A03()V

    return-void
.end method

.method public static A00(BB)C
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b1",
            "b2"
        }
    .end annotation

    .line 104133
    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 v0, p1, 0xff

    or-int/2addr p0, v0

    int-to-char v0, p0

    return v0
.end method

.method public static A01(J)C
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104134
    long-to-int v0, p0

    int-to-char v4, v0

    .line 104135
    .local v0, "result":C
    int-to-long v1, v4

    cmp-long v0, v1, p0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/pN;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ki;->A0H(ZLjava/lang/String;J)V

    .line 104136
    return v4

    .line 104137
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/pN;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/pN;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x3at
        0x3bt
        0x6ft
        0x20t
        0x29t
        0x6ft
        0x3dt
        0x2et
        0x21t
        0x28t
        0x2at
        0x75t
        0x6ft
        0x6at
        0x3ct
    .end array-data
.end method

.method public static A04([CC)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "array",
            "target"
        }
    .end annotation

    .line 104138
    array-length v3, p0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-char v0, p0, v1

    .line 104139
    .local v3, "value":C
    if-ne v0, p1, :cond_0

    .line 104140
    const/4 v0, 0x1

    return v0

    .line 104141
    .end local v3    # "value":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104142
    :cond_1
    return v2
.end method
