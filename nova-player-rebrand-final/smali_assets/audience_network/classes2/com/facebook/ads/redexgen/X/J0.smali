.class public abstract Lcom/facebook/ads/redexgen/X/J0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "INCREASE_VISIBILITY"
    }
    value = "To support OculusMp4Extractor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Iz;,
        Lcom/facebook/ads/redexgen/X/Iy;,
        Lcom/facebook/ads/redexgen/X/mC;,
        Lcom/facebook/ads/redexgen/X/mB;,
        Lcom/facebook/ads/redexgen/X/Ix;,
        Lcom/facebook/ads/redexgen/X/Iv;,
        Lcom/facebook/ads/redexgen/X/Iw;
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final A02:[B

.field public static final A03:[I
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Needed for oculus customization"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 815
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3VpIAtFn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NjWxo0tcAFilzYXB2gd1dub2S4KYfC0G"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7dc9OwNzjfbA4WDbGdH3UDrd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "kTLJpOKA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "odl5U202HvuloegJiYsgd2o0Bsn6ktlS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Tqd8q9EAW1nxLdrfn3G624yWy86zlBE3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "GM6CYLF4x47fKf9mrP144TBtf3lMkKEe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FJhXpGWKImafMZTrlZrsHtUKnb1aBvQ9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/J0;->A0P()V

    const v3, -0x77eba786

    const v2, 0x2521fdd

    const v1, -0x337d9d

    const v0, -0x7aab56d

    filled-new-array {v1, v0, v3, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/J0;->A03:[I

    .line 816
    const/16 v2, 0x15f

    const/16 v1, 0x8

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A1G(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/J0;->A02:[B

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/4v;I)F
    .locals 2

    .line 41010
    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v1

    .line 41012
    .local v0, "hSpacing":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    .line 41013
    .local v1, "vSpacing":I
    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public static A01(I)I
    .locals 4

    .line 41014
    const v0, 0x736f756e

    if-ne p0, v0, :cond_0

    .line 41015
    const/4 v0, 0x1

    return v0

    .line 41016
    :cond_0
    const v0, 0x76696465

    if-ne p0, v0, :cond_1

    .line 41017
    const/4 v0, 0x2

    return v0

    .line 41018
    :cond_1
    const v3, 0x74657874

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "Iy7m3jJh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "9tkcHcc8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq p0, v3, :cond_2

    const v0, 0x7362746c

    if-eq p0, v0, :cond_2

    const v0, 0x73756274

    if-eq p0, v0, :cond_2

    const v0, 0x636c6370

    if-ne p0, v0, :cond_3

    .line 41019
    :cond_2
    const/4 v0, 0x3

    return v0

    .line 41020
    :cond_3
    const v0, 0x6d657461

    if-ne p0, v0, :cond_4

    .line 41021
    const/4 v0, 0x5

    return v0

    .line 41022
    :cond_4
    const/4 v0, -0x1

    return v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 6

    .line 41023
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 41024
    .local v0, "currentByte":I
    and-int/lit8 v4, v3, 0x7f

    .line 41025
    .local v1, "size":I
    :goto_0
    and-int/lit16 v5, v3, 0x80

    const/16 v3, 0x80

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "pSNibJ1kKp1RE21akOqiyNuWX3n84SWQ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_1

    .line 41026
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v3

    .line 41027
    shl-int/lit8 v4, v4, 0x7

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "dUXzi2Ex"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "FqHw8aws"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x7f

    or-int/2addr v4, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "53iEjHDa99dBpQfClHLnj3Lr"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    and-int/lit8 v0, v3, 0x7f

    or-int/2addr v4, v0

    goto :goto_0

    .line 41028
    :cond_1
    return v4

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/4v;)I
    .locals 1

    .line 41029
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41030
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    return v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/4v;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41031
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 41032
    .local v0, "childAtomPosition":I
    if-lt v3, p2, :cond_3

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41033
    :goto_1
    sub-int v0, v3, p2

    if-ge v0, p3, :cond_4

    .line 41034
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41035
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v6

    .line 41036
    .local v3, "childAtomSize":I
    if-lez v6, :cond_2

    const/4 v4, 0x1

    :goto_2
    const/16 v5, 0x442

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "6gtDIh58mAlo0zqgdjwPUqi1ndJRBK82"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "DRBAnAjKoyJp6qnYv3HHxzBKoLLYYD5q"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v1, 0x1e

    const/16 v0, 0x4f

    invoke-static {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41037
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41038
    .local v4, "childType":I
    if-ne v0, p1, :cond_1

    .line 41039
    return v3

    .line 41040
    :cond_1
    add-int/2addr v3, v6

    .line 41041
    .end local v3    # "childAtomSize":I
    .end local v4    # "childType":I
    goto :goto_1

    .line 41042
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 41043
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 41044
    :cond_4
    const/4 v0, -0x1

    return v0
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/4v;)J
    .locals 2

    .line 41045
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41046
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41047
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01(I)I

    move-result v0

    .line 41048
    .local p0, "version":I
    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41049
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v0

    return-wide v0

    .line 41050
    :cond_0
    const/16 v1, 0x10

    goto :goto_0
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/4v;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41051
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41052
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41053
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01(I)I

    move-result v1

    .line 41054
    .local v2, "version":I
    if-nez v1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41055
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v5

    .line 41056
    .local v3, "timescale":J
    if-nez v1, :cond_0

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41057
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v4

    .line 41058
    .local v0, "languageCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v0, v4, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v0, v4, 0x5

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v4, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41059
    .local v5, "language":Ljava/lang/String;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 41060
    :cond_1
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/4v;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/JP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41061
    add-int/lit8 v7, p1, 0x8

    .line 41062
    .local v0, "childPosition":I
    const/4 v6, -0x1

    .line 41063
    .local v1, "schemeInformationBoxPosition":I
    const/4 v5, 0x0

    .line 41064
    .local v2, "schemeInformationBoxSize":I
    const/4 v4, 0x0

    .line 41065
    .local v3, "schemeType":Ljava/lang/String;
    const/4 v3, 0x0

    .line 41066
    .local v4, "dataFormat":Ljava/lang/Integer;
    :goto_0
    sub-int v0, v7, p1

    if-ge v0, p2, :cond_4

    .line 41067
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41068
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v10

    .line 41069
    .local v5, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v8

    .line 41070
    .local v6, "childAtomType":I
    const v9, 0x66726d61

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_0

    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "312zVnav"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "fwhHyPzp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v8, v9, :cond_2

    .line 41071
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 41072
    :cond_1
    :goto_2
    add-int/2addr v7, v10

    .line 41073
    .end local v5    # "childAtomSize":I
    .end local v6    # "childAtomType":I
    goto :goto_0

    .line 41074
    :cond_2
    const v0, 0x7363686d

    if-ne v8, v0, :cond_3

    .line 41075
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41076
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 41077
    :cond_3
    const v0, 0x73636869

    if-ne v8, v0, :cond_1

    .line 41078
    move v6, v7

    .line 41079
    move v5, v10

    goto :goto_2

    .line 41080
    :cond_4
    const/16 v9, 0x43a

    const/4 v8, 0x4

    const/16 v7, 0x4a

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "Q2dt9svTwucQVjxlQtJloRQWafbIItZ7"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v9, v8, v7}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 41081
    const/16 v2, 0x432

    const/4 v1, 0x4

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 41082
    const/16 v2, 0x43e

    const/4 v1, 0x4

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 41083
    const/16 v2, 0x436

    const/4 v1, 0x4

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41084
    :cond_6
    const/4 v8, 0x1

    if-eqz v3, :cond_9

    const/4 v7, 0x1

    :goto_3
    const/16 v2, 0x460

    const/16 v1, 0x16

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41085
    const/4 v0, -0x1

    if-eq v6, v0, :cond_8

    const/4 v7, 0x1

    :goto_4
    const/16 v2, 0x476

    const/16 v1, 0x16

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41086
    invoke-static {p0, v6, v5, v4}, Lcom/facebook/ads/redexgen/X/J0;->A0K(Lcom/facebook/ads/redexgen/X/4v;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;

    move-result-object v4

    .line 41087
    .local v7, "encryptionBox":Lcom/facebook/ads/redexgen/X/JP;
    if-eqz v4, :cond_7

    :goto_5
    const/16 v2, 0x48c

    const/16 v1, 0x16

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41088
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/5C;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/JP;

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 41089
    :cond_7
    const/4 v8, 0x0

    goto :goto_5

    .line 41090
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 41091
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 41092
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4v;II)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/4v;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/JP;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41093
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 41094
    .local v0, "childPosition":I
    :goto_0
    sub-int v4, v3, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "alPn9WvAmZr8sIghV9sZ4SJG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v4, p2, :cond_4

    .line 41095
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 41096
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "bSC6gQO3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "sEisHoVo"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41097
    .local v1, "childAtomSize":I
    if-lez v0, :cond_2

    :goto_1
    const/4 v5, 0x1

    :goto_2
    const/16 v4, 0x442

    const/16 v2, 0x1e

    const/16 v1, 0x4f

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41098
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41099
    .local v2, "childAtomType":I
    const v1, 0x73696e66

    if-ne v2, v1, :cond_3

    .line 41100
    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/J0;->A07(Lcom/facebook/ads/redexgen/X/4v;II)Landroid/util/Pair;

    move-result-object v1

    .line 41101
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v1, :cond_3

    .line 41102
    return-object v1

    .line 41103
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "sCQufaVXehZdAx160HDrkvqq2FYTSg6V"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "xgFgm7GbjtAXUGsxujgneuzUGgVoDuJS"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41104
    .local v1, "childAtomSize":I
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 41105
    .end local v3    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_3
    add-int/2addr v3, v0

    .line 41106
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    .line 41107
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/mE;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/mE;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    .line 41108
    const v0, 0x656c7374

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    .line 41109
    .local v0, "elstAtom":Lcom/facebook/ads/redexgen/X/mD;
    if-nez v0, :cond_0

    .line 41110
    const/4 v0, 0x0

    return-object v0

    .line 41111
    :cond_0
    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 41112
    .local v1, "elstData":Lcom/facebook/ads/redexgen/X/4v;
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "nlx0JEXKjNTNdSyjBy8qhdzuridSUNe7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "QPF9oPdHODxNb0EXvgymvar5stnTE0Tg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41113
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41114
    .local v2, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01(I)I

    move-result v3

    .line 41115
    .local v3, "version":I
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v2

    .line 41116
    .local v4, "entryCount":I
    new-array v1, v2, [J

    .line 41117
    .local v5, "editListDurations":[J
    new-array v0, v2, [J

    .line 41118
    .local v6, "editListMediaTimes":[J
    const/4 v5, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 41119
    const/4 p0, 0x1

    if-ne v3, p0, :cond_2

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0R()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v1, v5

    .line 41120
    if-ne v3, p0, :cond_1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0P()J

    move-result-wide v6

    :goto_2
    aput-wide v6, v0, v5

    .line 41121
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v4

    .line 41122
    .local p0, "mediaRateInteger":I
    if-ne v4, p0, :cond_3

    .line 41123
    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41124
    .end local p0    # "mediaRateInteger":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 41125
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v4

    int-to-long v6, v4

    goto :goto_2

    .line 41126
    :cond_2
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v6

    goto :goto_1

    .line 41127
    .restart local p0    # "mediaRateInteger":I
    :cond_3
    const/16 v2, 0x21c

    const/16 v1, 0x17

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41128
    .end local v7    # "i":I
    .end local p0    # "mediaRateInteger":I
    :cond_4
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/mD;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/mD;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            "Lcom/facebook/ads/androidx/media3/common/Metadata;",
            ">;"
        }
    .end annotation

    .line 41129
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41130
    .local v0, "udtaData":Lcom/facebook/ads/redexgen/X/4v;
    const/16 v5, 0x8

    invoke-virtual {v6, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41131
    const/4 p0, 0x0

    .line 41132
    .local v2, "metaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    const/4 v4, 0x0

    .line 41133
    .local v3, "smtaMetadata":Lcom/facebook/ads/androidx/media3/common/Metadata;
    :goto_0
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "ATF6ss1I"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "jntry4xS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-lt v3, v5, :cond_2

    .line 41134
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 41135
    .local v4, "atomPosition":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41136
    .local v5, "atomSize":I
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 41137
    .local v6, "atomType":I
    const v0, 0x6d657461

    if-ne v1, v0, :cond_1

    .line 41138
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41139
    add-int v0, v3, v2

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0E(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object p0

    .line 41140
    :cond_0
    :goto_1
    add-int/2addr v3, v2

    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41141
    .end local v4    # "atomPosition":I
    .end local v5    # "atomSize":I
    .end local v6    # "atomType":I
    goto :goto_0

    .line 41142
    :cond_1
    const v0, 0x736d7461

    if-ne v1, v0, :cond_0

    .line 41143
    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41144
    add-int v0, v3, v2

    invoke-static {v6, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0D(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v4

    goto :goto_1

    .line 41145
    :cond_2
    invoke-static {p0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0B(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    .locals 10

    .line 41146
    new-instance v8, Lcom/facebook/ads/redexgen/X/2a;

    invoke-direct {v8}, Lcom/facebook/ads/redexgen/X/2a;-><init>()V

    .line 41147
    .local v0, "colorInfo":Lcom/facebook/ads/redexgen/X/2a;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v0

    new-instance v7, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    .line 41148
    .local v1, "bitArray":Lcom/facebook/ads/redexgen/X/4u;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    const/16 v4, 0x8

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A08(I)V

    .line 41149
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4u;->A0A(I)V

    .line 41150
    const/4 v5, 0x3

    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    .line 41151
    .local v5, "seqProfile":I
    const/4 v0, 0x6

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41152
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    .line 41153
    .local v6, "highBitdepth":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    .line 41154
    .local v7, "twelveBit":Z
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41155
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 41156
    const/4 p0, 0x4

    invoke-virtual {v7, p0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v9

    .line 41157
    .local p0, "obuType":I
    const/16 v2, 0xb2

    const/16 v1, 0xb

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    if-eq v9, v6, :cond_0

    .line 41158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x251

    const/16 v1, 0x16

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 41159
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41160
    :cond_0
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41161
    const/16 v2, 0x233

    const/16 v1, 0x1e

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 41162
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41163
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    .line 41164
    .local p2, "obuHasSizeField":Z
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 41165
    if-eqz v0, :cond_2

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    const/16 v0, 0x7f

    if-le v1, v0, :cond_2

    .line 41166
    const/16 v2, 0xbd

    const/16 v1, 0x12

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 41167
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41168
    :cond_2
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 41169
    .local p3, "obuSeqHeaderSeqProfile":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 41170
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41171
    const/16 v2, 0x267

    const/16 v1, 0x28

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 41172
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41173
    :cond_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41174
    const/16 v2, 0x28f

    const/16 v1, 0x24

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 41175
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41176
    :cond_4
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41177
    const/16 v2, 0x1ee

    const/16 v1, 0x2e

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 41178
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41179
    :cond_5
    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 41180
    .local p4, "operatingPointsCountMinus1":I
    const/4 v1, 0x0

    .local p5, "i":I
    :goto_0
    const/4 v2, 0x7

    if-gt v1, v3, :cond_7

    .line 41181
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41182
    invoke-virtual {v7, v9}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 41183
    .local v3, "seqLevelIdx":I
    if-le v0, v2, :cond_6

    .line 41184
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 41185
    .end local v3    # "seqLevelIdx":I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41186
    .end local p5
    :cond_7
    invoke-virtual {v7, p0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    .line 41187
    .local v3, "frameWidthBitsMinus1":I
    invoke-virtual {v7, p0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 41188
    .local v9, "frameHeightBitsMinus1":I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41189
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41190
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 41191
    invoke-virtual {v7, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41192
    :cond_8
    invoke-virtual {v7, v2}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41193
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result p0

    .line 41194
    .local v8, "enableOrderHint":Z
    const/4 v3, 0x2

    if-eqz p0, :cond_9

    .line 41195
    invoke-virtual {v7, v3}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41196
    :cond_9
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_13

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "spdqEdfVqdQubNKbzHaSCSbA"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v9, :cond_12

    .line 41197
    const/4 v0, 0x2

    .line 41198
    .local p5, "seqForceScreenContentTools":I
    :goto_1
    if-lez v0, :cond_a

    .line 41199
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v9

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_11

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "fpomjt14ZeQUreCUx8H2Qj9W8NeulNVr"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v9, :cond_a

    .line 41200
    :goto_2
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41201
    :cond_a
    if-eqz p0, :cond_b

    .line 41202
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41203
    :cond_b
    invoke-virtual {v7, v5}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 41204
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    .line 41205
    .local v4, "colorConfigHighBitdepth":Z
    if-ne v4, v3, :cond_c

    if-eqz v0, :cond_c

    .line 41206
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A07()V

    .line 41207
    :cond_c
    if-eq v4, v6, :cond_10

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 41208
    .local p8, "monochrome":Z
    :goto_3
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4u;->A0H()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 41209
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v4

    .line 41210
    .local v2, "colorPrimaries":I
    .end local v3    # "frameWidthBitsMinus1":I
    .local p10, "frameWidthBitsMinus1":I
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 41211
    .local v3, "transferCharacteristics":I
    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v1

    .line 41212
    .local p1, "matrixCoefficients":I
    if-nez v2, :cond_f

    const/4 v0, 0x1

    .end local v4    # "colorConfigHighBitdepth":Z
    .local p11, "colorConfigHighBitdepth":Z
    if-ne v4, v0, :cond_f

    const/16 v0, 0xd

    if-ne v3, v0, :cond_f

    if-nez v1, :cond_f

    .line 41213
    const/4 v2, 0x1

    .line 41214
    .local p7, "colorRange":I
    :goto_4
    invoke-static {v4}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/2a;->A01(I)Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v1

    .line 41215
    const/4 v0, 0x1

    .end local v2    # "colorPrimaries":I
    .end local p7
    .local v1, "colorRange":I
    .local p6, "colorPrimaries":I
    .local p12, "bitArray":Lcom/facebook/ads/redexgen/X/4u;
    if-ne v2, v0, :cond_e

    :goto_5
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->A00(I)Lcom/facebook/ads/redexgen/X/2a;

    move-result-object v1

    .line 41216
    invoke-static {v3}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v0

    .line 41217
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2a;->A02(I)Lcom/facebook/ads/redexgen/X/2a;

    .line 41218
    .end local v1    # "colorRange":I
    .end local v3    # "transferCharacteristics":I
    .end local v4
    .restart local p10
    .restart local p11
    .restart local p12
    :cond_d
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/2a;->A03()Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    return-object v0

    .line 41219
    :cond_e
    const/4 v0, 0x2

    goto :goto_5

    .line 41220
    .end local v4
    .restart local p11
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    goto :goto_4

    .line 41221
    :cond_10
    const/4 v2, 0x0

    goto :goto_3

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "VYuT40g5EEwFWTEBAX27ZdDSMSIcM78J"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "WUQpgtHZDasrpP5hdEQLNs2AngJpMhTI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v9, :cond_a

    goto :goto_2

    .line 41222
    :cond_12
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v0

    goto/16 :goto_1

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 5

    .line 41223
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41225
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    if-ge v0, p1, :cond_2

    .line 41226
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/JB;->A04(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41227
    .local v1, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "lHUs7TBcARFSvdLvQvihflkVmEpZ1MYm"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ww6ZL200nHcHREaExV9g08P8Dpl3Z1fQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_0

    .line 41228
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41229
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "WnDUA4AhIDsAjF22CXXz4OtQUCX0JoWn"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "j7UA12dewj7emLVLNadXlb6UYVuvbHls"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v4, :cond_4

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v3}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_2
.end method

.method public static A0D(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 6

    .line 41230
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41231
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    const/4 v5, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "yKVAIw0tCkGB7M4Cua27Coqh"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-ge v3, p1, :cond_5

    .line 41232
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 41233
    .local v1, "atomPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41234
    .local v3, "atomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 41235
    .local v4, "atomType":I
    const v0, 0x73617574

    if-ne v1, v0, :cond_1

    .line 41236
    const/16 v0, 0xe

    if-ge v2, v0, :cond_2

    .line 41237
    return-object v5

    .line 41238
    .end local v0
    .end local v5
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4v;
    :cond_1
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41239
    .end local v1    # "atomPosition":I
    .end local v3    # "atomSize":I
    .end local v4    # "atomType":I
    goto :goto_0

    .line 41240
    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41241
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 41242
    .local v5, "recordingMode":I
    if-eq v1, v4, :cond_3

    const/16 v0, 0xd

    if-eq v1, v0, :cond_3

    .line 41243
    return-object v5

    .line 41244
    :cond_3
    if-ne v1, v4, :cond_4

    const/high16 v3, 0x43700000    # 240.0f

    .line 41245
    .local v0, "captureFrameRate":F
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41246
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 41247
    .local p0, "svcTemporalLayerCount":I
    new-array v2, v1, [Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;

    new-instance v1, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    invoke-direct {v1, v3, v0}, Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    const/4 v0, 0x0

    aput-object v1, v2, v0

    new-instance v0, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v0, v2}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>([Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;)V

    return-object v0

    .line 41248
    :cond_4
    const/high16 v3, 0x42f00000    # 120.0f

    goto :goto_1

    .line 41249
    :cond_5
    return-object v5
.end method

.method public static A0E(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 4

    .line 41250
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41251
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J0;->A0Q(Lcom/facebook/ads/redexgen/X/4v;)V

    .line 41252
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 41253
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 41254
    .local v0, "atomPosition":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41255
    .local v1, "atomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 41256
    .local v2, "atomType":I
    const v0, 0x696c7374

    if-ne v1, v0, :cond_0

    .line 41257
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41258
    add-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0C(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/androidx/media3/common/Metadata;

    move-result-object v0

    return-object v0

    .line 41259
    :cond_0
    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41260
    .end local v0    # "atomPosition":I
    .end local v1    # "atomSize":I
    .end local v2    # "atomType":I
    goto :goto_0

    .line 41261
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0F(Lcom/facebook/ads/redexgen/X/mE;)Lcom/facebook/ads/androidx/media3/common/Metadata;
    .locals 11

    .line 41262
    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v1

    .line 41263
    .local v0, "hdlrAtom":Lcom/facebook/ads/redexgen/X/mD;
    const v0, 0x6b657973

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v2

    .line 41264
    .local v1, "keysAtom":Lcom/facebook/ads/redexgen/X/mD;
    const v0, 0x696c7374

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v5

    .line 41265
    .local v2, "ilstAtom":Lcom/facebook/ads/redexgen/X/mD;
    const/4 v8, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41266
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J0;->A03(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v1

    const v0, 0x6d647461

    if-eq v1, v0, :cond_1

    .line 41267
    .end local v4
    .end local v5
    .end local v6
    .end local v7
    .end local v9
    :cond_0
    return-object v8

    .line 41268
    :cond_1
    iget-object v4, v2, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41269
    .local v4, "keys":Lcom/facebook/ads/redexgen/X/4v;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41270
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v3

    .line 41271
    .local v5, "entryCount":I
    new-array v9, v3, [Ljava/lang/String;

    .line 41272
    .local v6, "keyNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 41273
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 41274
    .local v8, "entrySize":I
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41275
    add-int/lit8 v0, v1, -0x8

    .line 41276
    .local v9, "keySize":I
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0W(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    .line 41277
    .end local v8    # "entrySize":I
    .end local v9    # "keySize":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41278
    .end local v7    # "i":I
    :cond_2
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41279
    .local v7, "ilst":Lcom/facebook/ads/redexgen/X/4v;
    const/16 v6, 0x8

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41280
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 41281
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;>;"
    :goto_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v0

    if-le v0, v6, :cond_5

    .line 41282
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v4

    .line 41283
    .local v10, "atomPosition":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result p0

    .line 41284
    .local p0, "atomSize":I
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 41285
    .local p1, "keyIndex":I
    if-ltz v10, :cond_4

    array-length v0, v9

    if-ge v10, v0, :cond_4

    .line 41286
    aget-object v1, v9, v10

    .line 41287
    .local p2, "key":Ljava/lang/String;
    add-int v0, v4, p0

    .line 41288
    invoke-static {v7, v0, v1}, Lcom/facebook/ads/redexgen/X/JB;->A09(Lcom/facebook/ads/redexgen/X/4v;ILjava/lang/String;)Lcom/facebook/ads/androidx/media3/extractor/metadata/mp4/MdtaMetadataEntry;

    move-result-object v0

    .line 41289
    .local p3, "entry":Lcom/facebook/ads/androidx/media3/common/Metadata$Entry;
    if-eqz v0, :cond_3

    .line 41290
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41291
    :cond_3
    :goto_2
    add-int/2addr v4, p0

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41292
    .end local v10    # "atomPosition":I
    .end local p0    # "atomSize":I
    .end local p1
    goto :goto_1

    .line 41293
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x167

    const/16 v1, 0x29

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb2

    const/16 v1, 0xb

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 41294
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_3
    return-object v8

    :cond_6
    new-instance v8, Lcom/facebook/ads/androidx/media3/common/Metadata;

    invoke-direct {v8, v5}, Lcom/facebook/ads/androidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_3
.end method

.method public static A0G(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/Iw;
    .locals 10

    .line 41295
    add-int/lit8 v0, p1, 0x8

    const/4 v5, 0x4

    add-int/2addr v0, v5

    move-object v3, p0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41296
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41297
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/J0;->A02(Lcom/facebook/ads/redexgen/X/4v;)I

    .line 41298
    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41299
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 41300
    .local v4, "flags":I
    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    .line 41301
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41302
    :cond_0
    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_1

    .line 41303
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41304
    :cond_1
    and-int/lit8 v0, v1, 0x20

    if-eqz v0, :cond_2

    .line 41305
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41306
    :cond_2
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41307
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/J0;->A02(Lcom/facebook/ads/redexgen/X/4v;)I

    .line 41308
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 41309
    .local v3, "objectTypeIndication":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3J;->A05(I)Ljava/lang/String;

    move-result-object v6

    .line 41310
    .local p2, "mimeType":Ljava/lang/String;
    const/16 v2, 0x3b3

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 41311
    const/16 v2, 0x3dd

    const/16 v1, 0xd

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 41312
    const/16 v2, 0x3ea

    const/16 v1, 0x10

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41313
    .end local v1
    .end local v2
    .end local p3
    .end local p5
    :cond_3
    new-instance v5, Lcom/facebook/ads/redexgen/X/Iw;

    const-wide/16 v8, -0x1

    const-wide/16 p0, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Iw;-><init>(Ljava/lang/String;[BJJ)V

    return-object v5

    .line 41314
    :cond_4
    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41315
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide p0

    .line 41316
    .local p3, "peakBitrate":J
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v8

    .line 41317
    .local p5, "bitrate":J
    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41318
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/J0;->A02(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v1

    .line 41319
    .local v1, "initializationDataSize":I
    new-array v7, v1, [B

    .line 41320
    .local v2, "initializationData":[B
    const/4 v0, 0x0

    invoke-virtual {v3, v7, v0, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 41321
    new-instance v5, Lcom/facebook/ads/redexgen/X/Iw;

    .line 41322
    const-wide/16 v3, -0x1

    const-wide/16 v1, 0x0

    cmp-long v0, v8, v1

    if-lez v0, :cond_6

    .line 41323
    :goto_0
    cmp-long v0, p0, v1

    if-lez v0, :cond_5

    :goto_1
    move-object v6, v6

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/Iw;-><init>(Ljava/lang/String;[BJJ)V

    .line 41324
    return-object v5

    .line 41325
    :cond_5
    move-wide p0, v3

    goto :goto_1

    .line 41326
    :cond_6
    move-wide v8, v3

    goto :goto_0
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/4v;IILjava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/Iy;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41327
    const/16 v0, 0xc

    move-object/from16 v5, p0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41328
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v3

    .line 41329
    .local v12, "numberOfEntries":I
    new-instance v14, Lcom/facebook/ads/redexgen/X/Iy;

    invoke-direct {v14, v3}, Lcom/facebook/ads/redexgen/X/Iy;-><init>(I)V

    .line 41330
    .local v13, "out":Lcom/facebook/ads/redexgen/X/Iy;
    const/4 v15, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v15, v3, :cond_d

    .line 41331
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v8

    .line 41332
    .local v15, "childStartPosition":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v9

    .line 41333
    .local v16, "childAtomSize":I
    if-lez v9, :cond_c

    const/4 v4, 0x1

    :goto_1
    const/16 v2, 0x442

    const/16 v1, 0x1e

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41334
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v7

    .line 41335
    .local v9, "childAtomType":I
    const v0, 0x61766331

    move-object/from16 v13, p4

    move/from16 v4, p1

    if-eq v7, v0, :cond_0

    const v0, 0x61766333

    if-eq v7, v0, :cond_0

    const v0, 0x656e6376

    if-eq v7, v0, :cond_0

    const v0, 0x6d317620

    if-eq v7, v0, :cond_0

    const v0, 0x6d703476

    if-eq v7, v0, :cond_0

    const v0, 0x68766331

    if-eq v7, v0, :cond_0

    const v0, 0x68657631

    if-eq v7, v0, :cond_0

    const v0, 0x73323633

    if-eq v7, v0, :cond_0

    const v0, 0x48323633

    if-eq v7, v0, :cond_0

    const v0, 0x76703038

    if-eq v7, v0, :cond_0

    const v0, 0x76703039

    if-eq v7, v0, :cond_0

    const v0, 0x61763031

    if-eq v7, v0, :cond_0

    const v0, 0x64766176

    if-eq v7, v0, :cond_0

    const v0, 0x64766131

    if-eq v7, v0, :cond_0

    const v0, 0x64766865

    if-eq v7, v0, :cond_0

    const v0, 0x64766831

    if-ne v7, v0, :cond_2

    .line 41336
    .end local v9    # "childAtomType":I
    .restart local v17
    :cond_0
    move-object/from16 v16, v5

    move/from16 v20, v4

    move/from16 v21, p2

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 p0, v15

    invoke-static/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/J0;->A0R(Lcom/facebook/ads/redexgen/X/4v;IIIIILcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/Iy;I)V

    .line 41337
    :cond_1
    :goto_2
    add-int/2addr v8, v9

    invoke-virtual {v5, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41338
    .end local v15    # "childStartPosition":I
    .end local v16    # "childAtomSize":I
    .end local v17
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 41339
    :cond_2
    const v6, 0x6d703461

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_3

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "Lno9V07i"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "YEniY2O3"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object/from16 v11, p3

    if-eq v7, v6, :cond_4

    const v0, 0x656e6361

    if-eq v7, v0, :cond_4

    const v0, 0x61632d33

    if-eq v7, v0, :cond_4

    const v0, 0x65632d33

    if-eq v7, v0, :cond_4

    const v0, 0x61632d34

    if-eq v7, v0, :cond_4

    const v6, 0x6d6c7061

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "oNdMvJKT47PBcE7ne9hrfWimoE8yMs3Y"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "E91ArCAwNKvmlCTKVUGyb2erGBttgGv0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_4

    :goto_4
    const v0, 0x64747363

    if-eq v7, v0, :cond_4

    const v0, 0x64747365

    if-eq v7, v0, :cond_4

    const v0, 0x64747368

    if-eq v7, v0, :cond_4

    const v0, 0x6474736c

    if-eq v7, v0, :cond_4

    const v0, 0x64747378

    if-eq v7, v0, :cond_4

    const v0, 0x73616d72

    if-eq v7, v0, :cond_4

    const v0, 0x73617762

    if-eq v7, v0, :cond_4

    const v0, 0x6c70636d

    if-eq v7, v0, :cond_4

    const v0, 0x736f7774

    if-eq v7, v0, :cond_4

    const v0, 0x74776f73

    if-eq v7, v0, :cond_4

    const v0, 0x2e6d7032

    if-eq v7, v0, :cond_4

    const v0, 0x2e6d7033

    if-eq v7, v0, :cond_4

    const v0, 0x6d686131

    if-eq v7, v0, :cond_4

    const v0, 0x6d686d31

    if-eq v7, v0, :cond_4

    const v0, 0x616c6163

    if-eq v7, v0, :cond_4

    const v0, 0x616c6177

    if-eq v7, v0, :cond_4

    const v0, 0x756c6177

    if-eq v7, v0, :cond_4

    const v0, 0x4f707573

    if-eq v7, v0, :cond_4

    const v0, 0x664c6143

    if-ne v7, v0, :cond_6

    .line 41340
    :cond_4
    move-object v6, v5

    move v10, v4

    .end local v9
    .local v17, "childAtomType":I
    move/from16 v12, p5

    invoke-static/range {v6 .. v15}, Lcom/facebook/ads/redexgen/X/J0;->A0T(Lcom/facebook/ads/redexgen/X/4v;IIIILjava/lang/String;ZLcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/Iy;I)V

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "3e9ArAGLRrjfeL1rnoEKSVyw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_4

    goto :goto_4

    .line 41341
    :cond_6
    const v6, 0x54544d4c

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto/16 :goto_3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "mlJGx5h1gegl7007OPiYCkGWkqECmimV"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_9

    const v6, 0x74783367

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "522w9jUs1Cdec5FzFXJEv7rx"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eq v7, v6, :cond_9

    const v0, 0x77767474

    if-eq v7, v0, :cond_9

    const v0, 0x73747070

    if-eq v7, v0, :cond_9

    const v0, 0x63363038

    if-ne v7, v0, :cond_a

    .line 41342
    :cond_9
    move-object v6, v5

    move v10, v4

    move v7, v7

    move v8, v8

    move v9, v9

    move-object v11, v11

    move-object v12, v14

    invoke-static/range {v6 .. v12}, Lcom/facebook/ads/redexgen/X/J0;->A0S(Lcom/facebook/ads/redexgen/X/4v;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/Iy;)V

    goto/16 :goto_2

    .line 41343
    :cond_a
    const v0, 0x6d657474

    if-ne v7, v0, :cond_b

    .line 41344
    invoke-static {v5, v7, v8, v4, v14}, Lcom/facebook/ads/redexgen/X/J0;->A0U(Lcom/facebook/ads/redexgen/X/4v;IIILcom/facebook/ads/redexgen/X/Iy;)V

    goto/16 :goto_2

    .line 41345
    :cond_b
    const v0, 0x63616d6d

    if-ne v7, v0, :cond_1

    .line 41346
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 41347
    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/2p;->A0g(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v4

    .line 41348
    const/16 v2, 0x2c7

    const/16 v1, 0x1b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41349
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, v14, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    goto/16 :goto_2

    .line 41350
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 41351
    .end local v14    # "i":I
    :cond_d
    return-object v14
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Iz;
    .locals 10

    .line 41352
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41353
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41354
    .local v1, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01(I)I

    move-result v8

    .line 41355
    .local v2, "version":I
    const/16 v7, 0x10

    if-nez v8, :cond_9

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41356
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v6

    .line 41357
    .local v4, "trackId":I
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41358
    const/4 v4, 0x1

    .line 41359
    .local v6, "durationUnknown":Z
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v3

    .line 41360
    .local v7, "durationPosition":I
    if-nez v8, :cond_0

    const/4 v9, 0x4

    .line 41361
    .local v0, "durationByteCount":I
    :cond_0
    const/4 v2, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v2, v9, :cond_1

    .line 41362
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int v0, v3, v2

    aget-byte v1, v1, v0

    const/4 v0, -0x1

    if-eq v1, v0, :cond_8

    .line 41363
    const/4 v4, 0x0

    .line 41364
    .end local v8    # "i":I
    :cond_1
    if-eqz v4, :cond_6

    .line 41365
    invoke-virtual {p0, v9}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41366
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 41367
    .local v8, "duration":J
    :cond_2
    :goto_2
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41368
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v8

    .line 41369
    .local v3, "a00":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v7

    .line 41370
    .local p0, "a01":I
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41371
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v5

    .line 41372
    .local v5, "a10":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41373
    .local p1, "a11":I
    const/high16 v1, 0x10000

    .line 41374
    .local p2, "fixedOne":I
    if-nez v8, :cond_3

    if-ne v7, v1, :cond_3

    neg-int v0, v1

    if-ne v5, v0, :cond_3

    if-nez v2, :cond_3

    .line 41375
    const/16 v1, 0x5a

    .line 41376
    .local p3, "rotationDegrees":I
    .restart local p3
    :goto_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iz;

    invoke-direct {v0, v6, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/Iz;-><init>(IJI)V

    return-object v0

    .line 41377
    .end local p3
    :cond_3
    if-nez v8, :cond_4

    neg-int v0, v1

    if-ne v7, v0, :cond_4

    if-ne v5, v1, :cond_4

    if-nez v2, :cond_4

    .line 41378
    const/16 v1, 0x10e

    .restart local p3
    goto :goto_3

    .line 41379
    .end local p3
    :cond_4
    neg-int v0, v1

    if-ne v8, v0, :cond_5

    if-nez v7, :cond_5

    if-nez v5, :cond_5

    neg-int v0, v1

    if-ne v2, v0, :cond_5

    .line 41380
    const/16 v1, 0xb4

    .restart local p3
    goto :goto_3

    .line 41381
    .end local p3
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 41382
    .end local v8    # "duration":J
    :cond_6
    if-nez v8, :cond_7

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v3

    .line 41383
    .restart local v8    # "duration":J
    :goto_4
    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 41384
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    .line 41385
    :cond_7
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0R()J

    move-result-wide v3

    goto :goto_4

    .line 41386
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41387
    :cond_9
    const/16 v0, 0x10

    goto/16 :goto_0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/mE;Lcom/facebook/ads/redexgen/X/mD;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/JO;
    .locals 19
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "INCREASE_VISIBILITY"
        }
        value = "To support OculusMp4Extractor"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41388
    move-wide/from16 v16, p2

    const v1, 0x6d646961

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/mE;

    .line 41389
    .local v1, "mdia":Lcom/facebook/ads/redexgen/X/mE;
    const v1, 0x68646c72    # 4.3148E24f

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/mD;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J0;->A03(Lcom/facebook/ads/redexgen/X/4v;)I

    move-result v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J0;->A01(I)I

    move-result v11

    .line 41390
    .local v2, "trackType":I
    const/4 v1, -0x1

    const/4 v9, 0x0

    if-ne v11, v1, :cond_0

    .line 41391
    return-object v9

    .line 41392
    :cond_0
    const v1, 0x746b6864

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/mD;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J0;->A0I(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Iz;

    move-result-object v8

    .line 41393
    .local v18, "tkhdData":Lcom/facebook/ads/redexgen/X/Iz;
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v16, v4

    if-nez v1, :cond_1

    .line 41394
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Iz;->A02(Lcom/facebook/ads/redexgen/X/Iz;)J

    move-result-wide v16

    .line 41395
    .end local p16
    .local v7, "duration":J
    .end local p16
    .local p0, "duration":J
    :cond_1
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J0;->A05(Lcom/facebook/ads/redexgen/X/4v;)J

    move-result-wide v14

    .line 41396
    .local p2, "movieTimescale":J
    cmp-long v1, v16, v4

    if-nez v1, :cond_4

    .line 41397
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 41398
    .local v5, "durationUs":J
    .local p4, "durationUs":J
    :goto_0
    const v1, 0x6d696e66

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/mE;

    .line 41399
    const v1, 0x7374626c

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v1

    .line 41400
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/mE;

    .line 41401
    .local v14, "stbl":Lcom/facebook/ads/redexgen/X/mE;
    const v1, 0x6d646864

    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/mD;

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/J0;->A06(Lcom/facebook/ads/redexgen/X/4v;)Landroid/util/Pair;

    move-result-object v4

    .line 41402
    .local v13, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    const v1, 0x73747364

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v1

    .line 41403
    .local v12, "stsd":Lcom/facebook/ads/redexgen/X/mD;
    if-eqz v1, :cond_6

    .line 41404
    iget-object v2, v1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41405
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Iz;->A00(Lcom/facebook/ads/redexgen/X/Iz;)I

    move-result p0

    .line 41406
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Iz;->A01(Lcom/facebook/ads/redexgen/X/Iz;)I

    move-result p1

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 41407
    move-object/from16 p3, p4

    move/from16 p4, p6

    move-object/from16 v18, v2

    move-object/from16 p2, v1

    invoke-static/range {v18 .. v23}, Lcom/facebook/ads/redexgen/X/J0;->A0H(Lcom/facebook/ads/redexgen/X/4v;IILjava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;Z)Lcom/facebook/ads/redexgen/X/Iy;

    move-result-object v3

    .line 41408
    .local v10, "stsdData":Lcom/facebook/ads/redexgen/X/Iy;
    const/4 v2, 0x0

    .line 41409
    .local v3, "editListDurations":[J
    const/4 v1, 0x0

    .line 41410
    .local v5, "editListMediaTimes":[J
    if-nez p5, :cond_2

    .line 41411
    const v5, 0x65647473

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v0

    .line 41412
    .local v6, "edtsAtom":Lcom/facebook/ads/redexgen/X/mE;
    if-eqz v0, :cond_2

    .line 41413
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J0;->A09(Lcom/facebook/ads/redexgen/X/mE;)Landroid/util/Pair;

    move-result-object v7

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v5, v6, v0

    const/4 v0, 0x6

    aget-object v6, v6, v0

    const/16 v0, 0x1a

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v5, v0, :cond_5

    .line 41414
    .local v7, "edtsData":Landroid/util/Pair;, "Landroid/util/Pair<[J[J>;"
    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v5, "IbqpVMf9BLmnuF5BFBlg7Wi48qFbo4Yh"

    const/4 v0, 0x7

    aput-object v5, v6, v0

    const-string v5, "amD11xiy90bj3UvdeHvItss5MLCDKaRi"

    const/4 v0, 0x4

    aput-object v5, v6, v0

    if-eqz v7, :cond_2

    .line 41415
    iget-object v2, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 41416
    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    .line 41417
    .end local v3    # "editListDurations":[J
    .end local v5    # "editListMediaTimes":[J
    .local p6, "editListDurations":[J
    .local p7, "editListMediaTimes":[J
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    if-nez v0, :cond_3

    :goto_1
    return-object v9

    .line 41418
    :cond_3
    new-instance v9, Lcom/facebook/ads/redexgen/X/JO;

    .line 41419
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/Iz;->A00(Lcom/facebook/ads/redexgen/X/Iz;)I

    move-result v10

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 41420
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v6, v3, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    iget v5, v3, Lcom/facebook/ads/redexgen/X/Iy;->A01:I

    iget-object v4, v3, Lcom/facebook/ads/redexgen/X/Iy;->A03:[Lcom/facebook/ads/redexgen/X/JP;

    iget v0, v3, Lcom/facebook/ads/redexgen/X/Iy;->A00:I

    .end local v10    # "stsdData":Lcom/facebook/ads/redexgen/X/Iy;
    .local p10, "stsdData":Lcom/facebook/ads/redexgen/X/Iy;
    .end local v12    # "stsd":Lcom/facebook/ads/redexgen/X/mD;
    .local p12, "stsd":Lcom/facebook/ads/redexgen/X/mD;
    .end local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .local p11, "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v14    # "stbl":Lcom/facebook/ads/redexgen/X/mE;
    .local p13, "stbl":Lcom/facebook/ads/redexgen/X/mE;
    move-object/from16 v18, v6

    move/from16 p0, v5

    move-object/from16 p1, v4

    move/from16 p2, v0

    move-object/from16 p3, v2

    move-object/from16 p4, v1

    invoke-direct/range {v9 .. v23}, Lcom/facebook/ads/redexgen/X/JO;-><init>(IIJJJLcom/facebook/ads/redexgen/X/qI;I[Lcom/facebook/ads/redexgen/X/JP;I[J[J)V

    goto :goto_1

    .line 41421
    .end local v5
    :cond_4
    const-wide/32 v18, 0xf4240

    move-wide/from16 p1, v14

    invoke-static/range {v16 .. v21}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v16

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41422
    .end local p6    # "editListDurations":[J
    .end local p7
    .end local p10
    .end local p11
    .end local p12
    .end local p13
    .restart local v12    # "stsd":Lcom/facebook/ads/redexgen/X/mD;
    .restart local v13    # "mdhdData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v14    # "stbl":Lcom/facebook/ads/redexgen/X/mE;
    :cond_6
    const/16 v2, 0x120

    const/16 v1, 0x3f

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A0K(Lcom/facebook/ads/redexgen/X/4v;IILjava/lang/String;)Lcom/facebook/ads/redexgen/X/JP;
    .locals 9

    .line 41423
    add-int/lit8 v3, p1, 0x8

    .line 41424
    .local v1, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_4

    .line 41425
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41426
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41427
    .local v2, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    .line 41428
    .local v4, "childAtomType":I
    const v0, 0x74656e63

    if-ne v1, v0, :cond_3

    .line 41429
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41430
    .local v5, "fullAtom":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iu;->A01(I)I

    move-result v0

    .line 41431
    .local v6, "version":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41432
    const/4 v6, 0x0

    .line 41433
    .local v8, "defaultCryptByteBlock":I
    const/4 v7, 0x0

    .line 41434
    .local p0, "defaultSkipByteBlock":I
    if-nez v0, :cond_2

    .line 41435
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41436
    .end local p1    # null:I
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 41437
    .local v7, "defaultIsProtected":Z
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v4

    .line 41438
    .local p1, "defaultPerSampleIvSize":I
    const/16 v0, 0x10

    new-array v5, v0, [B

    .line 41439
    .local p6, "defaultKeyId":[B
    array-length v0, v5

    invoke-virtual {p0, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 41440
    const/4 v8, 0x0

    .line 41441
    .local p3, "constantIv":[B
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 41442
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 41443
    .local p4, "constantIvSize":I
    new-array v8, v0, [B

    .line 41444
    invoke-virtual {p0, v8, v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 41445
    .end local p3    # "constantIv":[B
    .local p10, "constantIv":[B
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/JP;

    .end local p6
    .local p12, "defaultKeyId":[B
    move-object v3, p3

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/JP;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v1

    .line 41446
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 41447
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 41448
    .local p1, "patternByte":I
    and-int/lit16 v0, v1, 0xf0

    shr-int/lit8 v6, v0, 0x4

    .line 41449
    and-int/lit8 v7, v1, 0xf

    goto :goto_1

    .line 41450
    .end local v5    # "fullAtom":I
    .end local v6    # "version":I
    .end local v7    # "defaultIsProtected":Z
    .end local v8    # "defaultCryptByteBlock":I
    .end local p0    # "defaultSkipByteBlock":I
    .end local p1    # "patternByte":I
    .end local p10
    .end local p12
    :cond_3
    add-int/2addr v3, v2

    .line 41451
    .end local v2    # "childAtomSize":I
    .end local v4    # "childAtomType":I
    goto :goto_0

    .line 41452
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A0L(Lcom/facebook/ads/redexgen/X/JO;Lcom/facebook/ads/redexgen/X/mE;Lcom/facebook/ads/redexgen/X/HK;)Lcom/facebook/ads/redexgen/X/JR;
    .locals 34
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "INCREASE_VISIBILITY"
        }
        value = "To support OculusMp4Extractor"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41453
    const v0, 0x7374737a

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v2

    .line 41454
    .local v12, "stszAtom":Lcom/facebook/ads/redexgen/X/mD;
    const/4 v11, 0x0

    move-object/from16 p1, p0

    if-eqz v2, :cond_0

    .line 41455
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    new-instance v27, Lcom/facebook/ads/redexgen/X/mC;

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/mC;-><init>(Lcom/facebook/ads/redexgen/X/mD;Lcom/facebook/ads/redexgen/X/qI;)V

    .line 41456
    .local v1, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Ix;
    .end local v1    # "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Ix;
    .local v13, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Ix;
    :goto_0
    invoke-interface/range {v27 .. v27}, Lcom/facebook/ads/redexgen/X/Ix;->A8v()I

    move-result v17

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_19

    .line 41457
    .local v14, "sampleCount":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "VWWx1kGHZbX2q2PAsWKgJgHWMUDi0u3b"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    if-nez v17, :cond_1

    .line 41458
    new-instance v4, Lcom/facebook/ads/redexgen/X/JR;

    new-array v3, v0, [J

    new-array v2, v0, [I

    new-array v1, v0, [J

    new-array v0, v0, [I

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object v6, v3

    move-object v7, v2

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/JR;-><init>(Lcom/facebook/ads/redexgen/X/JO;[J[II[J[IJ)V

    return-object v4

    .line 41459
    .end local v1
    :cond_0
    const v0, 0x73747a32

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v1

    .line 41460
    .local v1, "stz2Atom":Lcom/facebook/ads/redexgen/X/mD;
    if-eqz v1, :cond_34

    .line 41461
    new-instance v27, Lcom/facebook/ads/redexgen/X/mB;

    move-object/from16 v0, v27

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/mB;-><init>(Lcom/facebook/ads/redexgen/X/mD;)V

    goto :goto_0

    .line 41462
    :cond_1
    const/4 v4, 0x0

    .line 41463
    .local v2, "chunkOffsetsAreLongs":Z
    const v0, 0x7374636f

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    .line 41464
    .local v3, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    if-nez v0, :cond_2

    .line 41465
    const/4 v4, 0x1

    .line 41466
    const v0, 0x636f3634

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mD;

    .line 41467
    .end local v2    # "chunkOffsetsAreLongs":Z
    .end local v3    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local v7, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local v15, "chunkOffsetsAreLongs":Z
    :cond_2
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41468
    .local v8, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4v;
    const v0, 0x73747363

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41469
    .local v6, "stsc":Lcom/facebook/ads/redexgen/X/4v;
    const v0, 0x73747473

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mD;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    move-object/from16 v28, v0

    .line 41470
    .local v5, "stts":Lcom/facebook/ads/redexgen/X/4v;
    const v0, 0x73747373

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    .line 41471
    .local v4, "stssAtom":Lcom/facebook/ads/redexgen/X/mD;
    if-eqz v0, :cond_a

    iget-object v14, v0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41472
    .local v2, "stss":Lcom/facebook/ads/redexgen/X/4v;
    :goto_1
    const v0, 0x63747473

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    .line 41473
    .local v3, "cttsAtom":Lcom/facebook/ads/redexgen/X/mD;
    if-eqz v0, :cond_3

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    .line 41474
    .local v0, "ctts":Lcom/facebook/ads/redexgen/X/4v;
    :cond_3
    new-instance v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v0, v1, v2, v4}, Lcom/facebook/ads/redexgen/X/Iv;-><init>(Lcom/facebook/ads/redexgen/X/4v;Lcom/facebook/ads/redexgen/X/4v;Z)V

    .line 41475
    .local v1, "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .end local v3    # "cttsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local v17, "cttsAtom":Lcom/facebook/ads/redexgen/X/mD;
    const/16 v2, 0xc

    move-object/from16 v1, v28

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41476
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v1

    add-int/lit8 v13, v1, -0x1

    .line 41477
    .local v18, "remainingTimestampDeltaChanges":I
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v12

    .line 41478
    .local v20, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v26

    .line 41479
    .local v3, "timestampDeltaInTimeUnits":I
    const/4 v10, 0x0

    .line 41480
    .local v22, "remainingSamplesAtTimestampOffset":I
    const/16 v25, 0x0

    .line 41481
    .local v23, "remainingTimestampOffsetChanges":I
    const/16 v19, 0x0

    .line 41482
    .local v24, "timestampOffset":I
    if-eqz v11, :cond_4

    .line 41483
    const/16 v1, 0xc

    .end local v4    # "stssAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local v25, "stssAtom":Lcom/facebook/ads/redexgen/X/mD;
    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41484
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v25

    .line 41485
    .end local v4
    .restart local v25    # "stssAtom":Lcom/facebook/ads/redexgen/X/mD;
    :cond_4
    const/16 v18, -0x1

    .line 41486
    .local v4, "nextSynchronizationSampleIndex":I
    const/4 v9, 0x0

    .line 41487
    .local v26, "remainingSynchronizationSamples":I
    if-eqz v14, :cond_5

    .line 41488
    const/16 v1, 0xc

    .end local v4    # "nextSynchronizationSampleIndex":I
    .local v27, "nextSynchronizationSampleIndex":I
    invoke-virtual {v14, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41489
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v9

    .line 41490
    if-lez v9, :cond_9

    .line 41491
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v1

    add-int/lit8 v18, v1, -0x1

    .line 41492
    .end local v27    # "nextSynchronizationSampleIndex":I
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .end local v2    # "stss":Lcom/facebook/ads/redexgen/X/4v;
    .end local v27
    .restart local v4    # "nextSynchronizationSampleIndex":I
    .local v19, "stss":Lcom/facebook/ads/redexgen/X/4v;
    :cond_5
    :goto_2
    invoke-interface/range {v27 .. v27}, Lcom/facebook/ads/redexgen/X/Ix;->A8A()I

    move-result v3

    .line 41493
    .local v2, "fixedSampleSize":I
    .end local v4    # "nextSynchronizationSampleIndex":I
    .restart local v27    # "nextSynchronizationSampleIndex":I
    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 41494
    .local v4, "sampleMimeType":Ljava/lang/String;
    .end local v6    # "stsc":Lcom/facebook/ads/redexgen/X/4v;
    .local v28, "stsc":Lcom/facebook/ads/redexgen/X/4v;
    const/4 v1, -0x1

    if-eq v3, v1, :cond_8

    .line 41495
    const/16 v4, 0x3c7

    const/16 v2, 0x9

    const/16 v1, 0x5e

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 41496
    const/16 v4, 0x381

    const/16 v2, 0xf

    const/16 v1, 0x4d

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 41497
    const/16 v4, 0x372

    const/16 v2, 0xf

    const/16 v1, 0x60

    invoke-static {v4, v2, v1}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    if-nez v13, :cond_8

    if-nez v25, :cond_8

    if-nez v9, :cond_8

    const/4 v4, 0x1

    .line 41498
    .local v29, "rechunkFixedSizeSamples":Z
    :goto_3
    const/16 v20, 0x0

    .line 41499
    .local v6, "maximumSize":I
    const-wide/16 v1, 0x0

    .line 41500
    .local v30, "timestampTimeUnits":J
    if-eqz v4, :cond_c

    .line 41501
    .end local v4    # "sampleMimeType":Ljava/lang/String;
    .local v32, "sampleMimeType":Ljava/lang/String;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:I

    new-array v5, v1, [J

    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v4, v1

    const/4 v1, 0x6

    aget-object v4, v4, v1

    const/16 v1, 0x1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_7

    .line 41502
    .local v4, "chunkOffsetsBytes":[J
    .end local v6    # "maximumSize":I
    .local v33, "maximumSize":I
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "it49YraTc1fDpxLwGLRBh0ec"

    const/4 v1, 0x2

    aput-object v2, v4, v1

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:I

    new-array v1, v1, [I

    .line 41503
    .local v6, "chunkSampleCounts":[I
    :goto_4
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iv;->A02()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 41504
    .end local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local p0, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/Iv;->A02:J

    aput-wide v6, v5, v2

    .line 41505
    iget v4, v0, Lcom/facebook/ads/redexgen/X/Iv;->A00:I

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    aput v2, v1, v4

    goto :goto_4

    .line 41506
    .local v4, "chunkOffsetsBytes":[J
    .end local v6    # "chunkSampleCounts":[I
    .local v33, "maximumSize":I
    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "cQxifTbk"

    const/4 v1, 0x0

    aput-object v2, v4, v1

    const-string v2, "kvbBtLxb"

    const/4 v1, 0x3

    aput-object v2, v4, v1

    iget v1, v0, Lcom/facebook/ads/redexgen/X/Iv;->A05:I

    new-array v1, v1, [I

    goto :goto_4

    .line 41507
    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    .line 41508
    .end local v4    # "chunkOffsetsBytes":[J
    .restart local v27    # "nextSynchronizationSampleIndex":I
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 41509
    :cond_a
    move-object v14, v11

    goto/16 :goto_1

    .line 41510
    .end local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .restart local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .restart local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    :cond_b
    move/from16 v0, v26

    int-to-long v6, v0

    .line 41511
    invoke-static {v3, v5, v1, v6, v7}, Lcom/facebook/ads/redexgen/X/J4;->A00(I[J[IJ)Lcom/facebook/ads/redexgen/X/J3;

    move-result-object v1

    .line 41512
    .local v7, "rechunkedResults":Lcom/facebook/ads/redexgen/X/J3;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/J3;->A04:[J

    move-object/from16 v21, v0

    .line 41513
    .local v10, "offsets":[J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/J3;->A03:[I

    move-object/from16 v22, v0

    .line 41514
    .local v11, "sizes":[I
    .end local v2    # "fixedSampleSize":I
    .local p1, "fixedSampleSize":I
    iget v0, v1, Lcom/facebook/ads/redexgen/X/J3;->A00:I

    move/from16 v20, v0

    .line 41515
    .end local v33    # "maximumSize":I
    .local v2, "maximumSize":I
    .end local v2    # "maximumSize":I
    .restart local v33    # "maximumSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/J3;->A05:[J

    move-object/from16 v24, v0

    .line 41516
    .local v2, "timestamps":[J
    .end local v2    # "timestamps":[J
    .local p2, "timestamps":[J
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/J3;->A02:[I

    move-object/from16 v23, v0

    .line 41517
    .local v2, "flags":[I
    iget-wide v1, v1, Lcom/facebook/ads/redexgen/X/J3;->A01:J

    .line 41518
    .end local v4
    .end local v7    # "rechunkedResults":Lcom/facebook/ads/redexgen/X/J3;
    .local v6, "duration":J
    move-object/from16 v0, p1

    goto/16 :goto_d

    .line 41519
    .end local v10    # "offsets":[J
    .end local v11    # "sizes":[I
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "maximumSize":I
    .end local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local p1    # "fixedSampleSize":I
    .end local p2    # "timestamps":[J
    .local v2, "fixedSampleSize":I
    .local v4, "sampleMimeType":Ljava/lang/String;
    .local v6, "maximumSize":I
    .local v7, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v2    # "fixedSampleSize":I
    .end local v4    # "sampleMimeType":Ljava/lang/String;
    .end local v6    # "maximumSize":I
    .end local v7    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .restart local v32    # "sampleMimeType":Ljava/lang/String;
    .restart local v33    # "maximumSize":I
    .restart local p0    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .restart local p1    # "fixedSampleSize":I
    :cond_c
    move/from16 v3, v17

    new-array v3, v3, [J

    move-object/from16 v21, v3

    .line 41520
    .local v2, "offsets":[J
    move/from16 v3, v17

    new-array v3, v3, [I

    move-object/from16 v22, v3

    .line 41521
    .local v4, "sizes":[I
    move/from16 v3, v17

    new-array v3, v3, [J

    move-object/from16 v24, v3

    .line 41522
    .local v6, "timestamps":[J
    move/from16 v3, v17

    new-array v3, v3, [I

    move-object/from16 v23, v3

    .line 41523
    .local v7, "flags":[I
    const-wide/16 v6, 0x0

    .line 41524
    .local v10, "offset":J
    const/4 v8, 0x0

    .line 41525
    .local p2, "remainingSamplesInChunk":I
    const/4 v5, 0x0

    .end local v23    # "remainingTimestampOffsetChanges":I
    .local v8, "remainingTimestampDeltaChanges":I
    .local v9, "i":I
    .local v10, "nextSynchronizationSampleIndex":I
    .local v11, "maximumSize":I
    .local v12, "remainingSamplesAtTimestampDelta":I
    .local v15, "remainingSynchronizationSamples":I
    .local v18, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4v;
    .local v20, "stszAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local v22, "offset":J
    .local v24, "chunkOffsetsAreLongs":Z
    .local v26, "remainingTimestampOffsetChanges":I
    .local v27, "remainingSamplesAtTimestampOffset":I
    .local v33, "timestampOffset":I
    .end local v5    # "stts":Lcom/facebook/ads/redexgen/X/4v;
    .local p3, "stts":Lcom/facebook/ads/redexgen/X/4v;
    :goto_5
    const/16 v15, 0xb2

    const/16 v4, 0xb

    const/16 v3, 0x44

    move v15, v15

    move v4, v4

    move v3, v3

    invoke-static {v15, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v16

    move/from16 v3, v17

    if-ge v5, v3, :cond_16

    .line 41526
    const/4 v15, 0x1

    .line 41527
    .local p4, "chunkDataComplete":Z
    :goto_6
    if-nez v8, :cond_e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Iv;->A02()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 41528
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v4, v4, v3

    const/16 v3, 0x17

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x57

    if-eq v4, v3, :cond_d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSynchronizationSamples":I
    .local p5, "sampleCount":I
    .local p6, "remainingSynchronizationSamples":I
    :cond_d
    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v4, "M5jbBIfsv36G8eW66Ax72viWGVpCEb4z"

    const/4 v3, 0x5

    aput-object v4, v6, v3

    iget-wide v6, v0, Lcom/facebook/ads/redexgen/X/Iv;->A02:J

    .line 41529
    .end local v22    # "offset":J
    .local v14, "offset":J
    .end local v14    # "offset":J
    .restart local v22    # "offset":J
    iget v8, v0, Lcom/facebook/ads/redexgen/X/Iv;->A01:I

    .end local p2    # "remainingSamplesInChunk":I
    .local v14, "remainingSamplesInChunk":I
    goto :goto_6

    .line 41530
    .end local p5
    .end local p6
    .local v14, "sampleCount":I
    .restart local v15    # "remainingSynchronizationSamples":I
    .restart local p2    # "remainingSamplesInChunk":I
    .end local v14    # "sampleCount":I
    .end local v15    # "remainingSynchronizationSamples":I
    .restart local p5
    .restart local p6
    :cond_e
    if-nez v15, :cond_f

    .line 41531
    const/16 v4, 0x1ba

    const/16 v3, 0x1c

    const/16 v0, 0x5e

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 41532
    .end local p5
    .restart local v14    # "sampleCount":I
    move-object/from16 v0, v21

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v21

    .line 41533
    move-object/from16 v0, v22

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v22

    .line 41534
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v24

    .line 41535
    move-object/from16 v0, v23

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v23

    .line 41536
    goto :goto_9

    .line 41537
    .end local v14    # "sampleCount":I
    .restart local p5
    :cond_f
    if-eqz v11, :cond_11

    .line 41538
    .end local v27    # "remainingSamplesAtTimestampOffset":I
    .local v15, "remainingSamplesAtTimestampOffset":I
    :goto_7
    if-nez v10, :cond_10

    if-lez v25, :cond_10

    .line 41539
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v10

    .line 41540
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v19

    .line 41541
    add-int/lit8 v25, v25, -0x1

    goto :goto_7

    .line 41542
    :cond_10
    add-int/lit8 v10, v10, -0x1

    .line 41543
    .end local v33    # "timestampOffset":I
    .local v5, "timestampOffset":I
    :cond_11
    aput-wide v6, v21, v5

    .line 41544
    invoke-interface/range {v27 .. v27}, Lcom/facebook/ads/redexgen/X/Ix;->AHS()I

    move-result v3

    aput v3, v22, v5

    .line 41545
    aget v4, v22, v5

    move/from16 v3, v20

    if-le v4, v3, :cond_12

    .line 41546
    aget v20, v22, v5

    .line 41547
    :cond_12
    move/from16 v3, v19

    int-to-long v3, v3

    move-wide v15, v3

    add-long v3, v1, v15

    aput-wide v3, v24, v5

    .line 41548
    if-nez v14, :cond_15

    const/4 v3, 0x1

    :goto_8
    aput v3, v23, v5

    .line 41549
    move/from16 v3, v18

    if-ne v5, v3, :cond_13

    .line 41550
    const/4 v3, 0x1

    aput v3, v23, v5

    .line 41551
    add-int/lit8 v9, v9, -0x1

    .line 41552
    .end local p6
    .local v15, "remainingSynchronizationSamples":I
    if-lez v9, :cond_13

    .line 41553
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .line 41554
    .end local p6
    .restart local v15    # "remainingSynchronizationSamples":I
    .end local v1    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .end local v2    # "offsets":[J
    .local v14, "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .local p7, "offsets":[J
    :cond_13
    move/from16 v3, v26

    int-to-long v3, v3

    move-wide v15, v3

    add-long/2addr v1, v15

    .line 41555
    add-int/lit8 v12, v12, -0x1

    .line 41556
    if-nez v12, :cond_14

    if-lez v13, :cond_14

    .line 41557
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v12

    .line 41558
    .end local v12    # "remainingSamplesAtTimestampDelta":I
    .local v1, "remainingSamplesAtTimestampDelta":I
    invoke-virtual/range {v28 .. v28}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v26

    .line 41559
    add-int/lit8 v13, v13, -0x1

    .line 41560
    .end local v1    # "remainingSamplesAtTimestampDelta":I
    .restart local v12    # "remainingSamplesAtTimestampDelta":I
    :cond_14
    aget v3, v22, v5

    int-to-long v3, v3

    move-wide v15, v3

    add-long/2addr v6, v15

    .line 41561
    .end local p4
    add-int/lit8 v8, v8, -0x1

    .line 41562
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 41563
    :cond_15
    const/4 v3, 0x0

    goto :goto_8

    .line 41564
    .end local v5    # "timestampOffset":I
    .end local p5
    .end local p7
    .local v1, "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .restart local v2    # "offsets":[J
    .local v14, "sampleCount":I
    .restart local v33    # "timestampOffset":I
    :cond_16
    move/from16 v5, v17

    .line 41565
    .end local v1    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .end local v2    # "offsets":[J
    .end local v15    # "remainingSynchronizationSamples":I
    .local v14, "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .restart local p5
    .restart local p6
    .restart local p7
    .end local v6    # "timestamps":[J
    .end local v9    # "i":I
    .end local p2    # "remainingSamplesInChunk":I
    .local v1, "remainingSamplesInChunk":I
    .local v2, "timestamps":[J
    .end local v2    # "timestamps":[J
    .end local v3    # "timestampDeltaInTimeUnits":I
    .end local v33    # "timestampOffset":I
    .local v6, "timestampOffset":I
    .local v9, "timestampDeltaInTimeUnits":I
    .local v15, "timestamps":[J
    :goto_9
    move/from16 v0, v19

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 41566
    .local v2, "duration":J
    const/4 v14, 0x1

    .line 41567
    .local v33, "isCttsValid":Z
    if-eqz v11, :cond_17

    .line 41568
    :goto_a
    if-lez v25, :cond_17

    .line 41569
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    if-eqz v0, :cond_31

    .line 41570
    const/4 v14, 0x0

    .line 41571
    :cond_17
    if-nez v9, :cond_18

    if-nez v12, :cond_18

    if-nez v8, :cond_18

    if-nez v13, :cond_18

    if-nez v10, :cond_18

    if-nez v14, :cond_30

    .line 41572
    .end local v0    # "ctts":Lcom/facebook/ads/redexgen/X/4v;
    .local p2, "ctts":Lcom/facebook/ads/redexgen/X/4v;
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .end local v2    # "duration":J
    .local p8, "duration":J
    const/16 v4, 0xcf

    const/16 v3, 0x20

    const/16 v0, 0x18

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    .end local v6    # "timestampOffset":I
    .local v2, "timestampOffset":I
    iget v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A00:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0x90

    const/16 v4, 0x22

    const/16 v3, 0x24

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local p6
    .local v3, "remainingSynchronizationSamples":I
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .end local v2    # "timestampOffset":I
    .local p4, "timestampOffset":I
    const/16 v6, 0xe

    const/16 v4, 0x23

    const/16 v3, 0x41

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x55

    const/16 v4, 0x1a

    const/16 v3, 0xe

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0x6f

    const/16 v4, 0x21

    const/16 v3, 0x29

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v6, 0x31

    const/16 v4, 0x24

    const/16 v3, 0x1f

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v27
    .local v2, "remainingSamplesAtTimestampOffset":I
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 41573
    if-nez v14, :cond_2e

    const/4 v6, 0x0

    const/16 v4, 0xe

    const/16 v3, 0xc

    invoke-static {v6, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    .end local v1    # "remainingSamplesInChunk":I
    .local p6, "remainingSamplesInChunk":I
    :goto_b
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41574
    move-object/from16 v3, v16

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 41575
    .end local v22    # "offset":J
    .end local v33    # "isCttsValid":Z
    .end local p6
    :goto_c
    move/from16 v17, v5

    .end local v2    # "remainingSamplesAtTimestampOffset":I
    .end local v3    # "remainingSynchronizationSamples":I
    .end local v4    # "sizes":[I
    .end local v8    # "remainingTimestampDeltaChanges":I
    .end local p7
    .local v7, "sampleCount":I
    .local v9, "flags":[I
    .local v10, "timestampDeltaInTimeUnits":I
    .local v11, "offsets":[J
    .local v12, "sizes":[I
    .local v22, "remainingTimestampDeltaChanges":I
    .local v23, "remainingSamplesAtTimestampDelta":I
    .local v26, "remainingSamplesAtTimestampOffset":I
    .local v27, "nextSynchronizationSampleIndex":I
    .local v30, "remainingTimestampOffsetChanges":I
    .local v31, "remainingSynchronizationSamples":I
    .local v33, "maximumSize":I
    .local p5, "timestampTimeUnits":J
    :goto_d
    const-wide/32 v9, 0xf4240

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v3, 0x18

    if-eq v4, v3, :cond_1a

    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    sget-object v7, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v4, "ipyvZTOv07cYtbuH1DKg84aCsuigBUI1"

    const/4 v3, 0x7

    aput-object v4, v7, v3

    const-string v4, "ch7TyunNM6oXEfHdpbs8btnx2NdPJSj4"

    const/4 v3, 0x4

    aput-object v4, v7, v3

    move-wide v7, v1

    move-wide v11, v5

    invoke-static/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v7

    .line 41576
    .local p17, "durationUs":J
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    const-wide/32 v3, 0xf4240

    if-nez v5, :cond_1b

    .line 41577
    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    move-object/from16 v0, v24

    invoke-static {v0, v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/5C;->A13([JJJ)V

    .line 41578
    new-instance v0, Lcom/facebook/ads/redexgen/X/JR;

    .end local v7    # "sampleCount":I
    .end local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleCount":I
    .local v18, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local p0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4v;
    .local p7, "timestampDeltaInTimeUnits":I
    .local p19, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Ix;
    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/JR;-><init>(Lcom/facebook/ads/redexgen/X/JO;[J[II[J[IJ)V

    return-object v0

    .line 41579
    .end local p7
    .end local p19
    .restart local v7    # "sampleCount":I
    .restart local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleSizeBox":Lcom/facebook/ads/redexgen/X/Ix;
    .local v18, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4v;
    .local p0, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v7    # "sampleCount":I
    .end local v10    # "timestampDeltaInTimeUnits":I
    .local v13, "sampleCount":I
    .local v18, "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .local p0, "chunkOffsets":Lcom/facebook/ads/redexgen/X/4v;
    .restart local p7
    .restart local p19
    :cond_1b
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    array-length v3, v3

    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    iget v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    if-ne v3, v4, :cond_1d

    move-object/from16 v3, v24

    array-length v4, v3

    const/4 v3, 0x2

    if-lt v4, v3, :cond_1d

    .line 41580
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A09:[J

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    const/4 v4, 0x0

    aget-wide v27, v3, v4

    .line 41581
    .local p20, "editStartTime":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    aget-wide v3, v3, v4

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    iget-wide v7, v0, Lcom/facebook/ads/redexgen/X/JO;->A05:J

    .line 41582
    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v3

    add-long v29, v27, v3

    .line 41583
    .local p22, "editEndTime":J
    move-object/from16 v24, v24

    move-wide/from16 v25, v1

    invoke-static/range {v24 .. v30}, Lcom/facebook/ads/redexgen/X/J0;->A0V([JJJJ)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 41584
    sub-long v25, v1, v29

    .line 41585
    .local p24, "paddingTimeUnits":J
    const/4 v3, 0x0

    aget-wide v3, v24, v3

    sub-long v27, v27, v3

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v5, v3

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .line 41586
    move-wide/from16 v29, v5

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v32}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v5

    .line 41587
    .local v7, "encoderDelay":J
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v3, v3, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    int-to-long v7, v3

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .line 41588
    move-wide/from16 v29, v3

    move-wide/from16 v27, v7

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v3

    .line 41589
    .local v5, "encoderPadding":J
    cmp-long v7, v5, v10

    if-nez v7, :cond_1c

    cmp-long v7, v3, v10

    if-eqz v7, :cond_1d

    :cond_1c
    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v5, v8

    if-gtz v7, :cond_1d

    cmp-long v7, v3, v8

    if-gtz v7, :cond_1d

    .line 41590
    long-to-int v1, v5

    move-object/from16 v2, p2

    iput v1, v2, Lcom/facebook/ads/redexgen/X/HK;->A00:I

    .line 41591
    long-to-int v1, v3

    iput v1, v2, Lcom/facebook/ads/redexgen/X/HK;->A01:I

    .line 41592
    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    const-wide/32 v2, 0xf4240

    move-object/from16 v1, v24

    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/ads/redexgen/X/5C;->A13([JJJ)V

    .line 41593
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    const/4 v1, 0x0

    aget-wide v1, v2, v1

    iget-wide v5, v0, Lcom/facebook/ads/redexgen/X/JO;->A05:J

    .line 41594
    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v7

    .line 41595
    .local p10, "editedDurationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/JR;

    .end local v5    # "encoderPadding":J
    .local p12, "encoderPadding":J
    .end local v7    # "encoderDelay":J
    .local p14, "encoderDelay":J
    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/JR;-><init>(Lcom/facebook/ads/redexgen/X/JO;[J[II[J[IJ)V

    return-object v0

    .line 41596
    .end local v5
    .end local v7
    .end local p20
    .end local p22
    .end local p24
    :cond_1d
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    array-length v4, v3

    const/4 v3, 0x1

    if-ne v4, v3, :cond_1e

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    const/4 v6, 0x0

    aget-wide v4, v3, v6

    cmp-long v3, v4, v10

    if-nez v3, :cond_1e

    .line 41597
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A09:[J

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    aget-wide v6, v3, v6

    .line 41598
    .local p10, "editStartTime":J
    const/4 v5, 0x0

    .local v0, "i":I
    :goto_e
    move-object/from16 v3, v24

    array-length v3, v3

    if-ge v5, v3, :cond_32

    .line 41599
    aget-wide v8, v24, v5

    sub-long/2addr v8, v6

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .line 41600
    const-wide/32 v10, 0xf4240

    move-wide v12, v3

    invoke-static/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v3

    aput-wide v3, v24, v5

    .line 41601
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 41602
    .end local p10
    .end local p12
    .restart local p17
    :cond_1e
    iget v2, v0, Lcom/facebook/ads/redexgen/X/JO;->A03:I

    const/4 v1, 0x1

    if-ne v2, v1, :cond_23

    const/4 v13, 0x1

    .line 41603
    .local v7, "omitClippedSample":Z
    :goto_f
    const/4 v10, 0x0

    .line 41604
    .local v0, "editedSampleCount":I
    const/4 v12, 0x0

    .line 41605
    .local v1, "nextSampleIndex":I
    const/16 v19, 0x0

    .line 41606
    .local v2, "copyMetadata":Z
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    array-length v1, v1

    new-array v7, v1, [I

    .line 41607
    .local v8, "startIndices":[I
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    array-length v1, v1

    new-array v6, v1, [I

    .line 41608
    .local v6, "endIndices":[I
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/JO;->A09:[J

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v2, v1

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x57

    if-eq v2, v1, :cond_22

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 41609
    .local p10, "editListMediaTimes":[J
    const/4 v5, 0x0

    .local v0, "copyMetadata":Z
    .local v1, "i":I
    .local v2, "nextSampleIndex":I
    .local v5, "editedSampleCount":I
    :goto_10
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    array-length v1, v1

    if-ge v5, v1, :cond_24

    .line 41610
    aget-wide v1, v11, v5

    .line 41611
    .local v3, "editMediaTime":J
    const-wide/16 v8, -0x1

    cmp-long v3, v1, v8

    if-eqz v3, :cond_20

    .line 41612
    .end local v14    # "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    .local p13, "chunkIterator":Lcom/facebook/ads/redexgen/X/Iv;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    aget-wide v25, v3, v5

    .end local v11    # "offsets":[J
    .end local v12    # "sizes":[I
    .local v14, "offsets":[J
    .local p14, "sizes":[I
    iget-wide v8, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .end local v13    # "sampleCount":I
    .end local v14    # "offsets":[J
    .local p15, "sampleCount":I
    .local p16, "offsets":[J
    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A05:J

    .line 41613
    move-wide/from16 v27, v8

    move-wide/from16 v29, v3

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v8

    .line 41614
    .local v11, "editDuration":J
    const/4 v4, 0x1

    move-object/from16 v3, v24

    invoke-static {v3, v1, v2, v4, v4}, Lcom/facebook/ads/redexgen/X/5C;->A0L([JJZZ)I

    move-result v3

    aput v3, v7, v5

    .line 41615
    add-long/2addr v1, v8

    .line 41616
    const/4 v4, 0x0

    .end local v3    # "editMediaTime":J
    .local p20, "editMediaTime":J
    move-object/from16 v3, v24

    invoke-static {v3, v1, v2, v13, v4}, Lcom/facebook/ads/redexgen/X/5C;->A0K([JJZZ)I

    move-result v1

    aput v1, v6, v5

    .line 41617
    :goto_11
    aget v2, v7, v5

    aget v1, v6, v5

    if-ge v2, v1, :cond_1f

    aget v1, v7, v5

    aget v1, v23, v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1f

    .line 41618
    aget v1, v7, v5

    add-int/2addr v1, v2

    aput v1, v7, v5

    goto :goto_11

    .line 41619
    :cond_1f
    aget v2, v6, v5

    aget v1, v7, v5

    sub-int/2addr v2, v1

    add-int/2addr v10, v2

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v3, v1

    const/4 v1, 0x6

    aget-object v3, v3, v1

    const/16 v1, 0x1a

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_19

    .line 41620
    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "N8MUiUXq"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "O0bSFd8k"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    aget v1, v7, v5

    if-eq v12, v1, :cond_21

    const/4 v1, 0x1

    :goto_12
    or-int v19, v19, v1

    .line 41621
    aget v12, v6, v5

    .line 41622
    .end local v3
    .end local v11    # "editDuration":J
    .end local v12
    .end local v13
    .end local v14
    .restart local p13
    .restart local p14
    .restart local p15
    .restart local p16
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 41623
    :cond_21
    const/4 v1, 0x0

    goto :goto_12

    :cond_22
    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "YPXXFbwg"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "nX0rcUWc"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 41624
    .local p10, "editListMediaTimes":[J
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 41625
    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_f

    .line 41626
    .end local p13
    .end local p14
    .end local p15
    .end local p16
    .restart local v11    # "editDuration":J
    .restart local v12    # "sizes":[I
    .restart local v13    # "sampleCount":I
    .restart local v14    # "offsets":[J
    :cond_24
    const/4 v2, 0x1

    .line 41627
    .end local v1    # "i":I
    .end local v11    # "editDuration":J
    .end local v12    # "sizes":[I
    .end local v13    # "sampleCount":I
    .end local v14    # "offsets":[J
    .restart local p13
    .restart local p14
    .restart local p15
    .restart local p16
    .end local p15
    .local v14, "sampleCount":I
    move/from16 v1, v17

    if-eq v10, v1, :cond_2d

    :goto_13
    or-int v19, v19, v2

    .line 41628
    .end local v0    # "copyMetadata":Z
    .local v11, "copyMetadata":Z
    if-eqz v19, :cond_2c

    new-array v14, v10, [J

    .line 41629
    .local v12, "editedOffsets":[J
    :goto_14
    if-eqz v19, :cond_2b

    new-array v11, v10, [I

    .line 41630
    .local v13, "editedSizes":[I
    :goto_15
    if-eqz v19, :cond_25

    const/16 v20, 0x0

    :cond_25
    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v2, v3, v1

    const/4 v1, 0x4

    aget-object v3, v3, v1

    const/16 v1, 0x1e

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v2, v1, :cond_19

    .line 41631
    .local v0, "editedMaximumSize":I
    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "xPfk6NQdScK777382m5CuwBWtM3rjqH6"

    const/4 v1, 0x5

    aput-object v2, v3, v1

    if-eqz v19, :cond_2a

    new-array v13, v10, [I

    .line 41632
    .local v4, "editedFlags":[I
    :goto_16
    new-array v12, v10, [J

    .line 41633
    .local v3, "editedTimestamps":[J
    const-wide/16 v25, 0x0

    .line 41634
    .local p20, "pts":J
    const/4 v9, 0x0

    .line 41635
    .local v1, "sampleIndex":I
    const/4 v8, 0x0

    .end local p20
    .local v0, "i":I
    .local v16, "editedMaximumSize":I
    .local p26, "pts":J
    .end local v2    # "nextSampleIndex":I
    .local v21, "nextSampleIndex":I
    :goto_17
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    array-length v1, v1

    if-ge v8, v1, :cond_33

    .line 41636
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A09:[J

    aget-wide v17, v1, v8

    .line 41637
    .local p28, "editMediaTime":J
    aget v5, v7, v8

    .line 41638
    .local v2, "startIndex":I
    .end local v5    # "editedSampleCount":I
    .local p15, "editedSampleCount":I
    aget v10, v6, v8

    .line 41639
    .local v5, "endIndex":I
    if-eqz v19, :cond_28

    .line 41640
    .end local v6    # "endIndices":[I
    .local p30, "endIndices":[I
    sub-int v2, v10, v5

    .line 41641
    .local v6, "count":I
    .end local p16
    .local v14, "offsets":[J
    .local p31, "sampleCount":I
    move-object/from16 v1, v21

    invoke-static {v1, v5, v14, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41642
    .end local p14
    .local v14, "sizes":[I
    .restart local p16
    move-object/from16 v1, v22

    invoke-static {v1, v5, v11, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41643
    move-object/from16 v1, v23

    invoke-static {v1, v5, v13, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41644
    .end local v16    # "editedMaximumSize":I
    .local v2, "editedMaximumSize":I
    .local v6, "j":I
    .local p14, "startIndex":I
    :goto_18
    if-ge v5, v10, :cond_27

    .line 41645
    const-wide/32 v27, 0xf4240

    .end local v4    # "editedFlags":[I
    .end local v5    # "endIndex":I
    .local p32, "editedFlags":[I
    .local p33, "endIndex":I
    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A05:J

    move-wide/from16 v29, v1

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v15

    .line 41646
    .local v4, "ptsUs":J
    aget-wide v3, v24, v5

    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .local p34, "omitClippedSample":Z
    .local p35, "startIndices":[I
    sub-long v3, v3, v17

    .line 41647
    const-wide/16 v1, 0x0

    .end local v14    # "sizes":[I
    .end local v15    # "timestamps":[J
    .local p36, "timestamps":[J
    .local p37, "sizes":[I
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v29

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .line 41648
    move-wide/from16 v31, v27

    move-wide/from16 v33, v1

    invoke-static/range {v29 .. v34}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v1

    .line 41649
    .local v7, "timeInSegmentUs":J
    add-long/2addr v15, v1

    aput-wide v15, v12, v9

    .line 41650
    if-eqz v19, :cond_26

    aget v2, v11, v9

    move/from16 v1, v20

    if-le v2, v1, :cond_26

    .line 41651
    aget v20, v22, v5

    .line 41652
    .end local v4    # "ptsUs":J
    .end local v7    # "timeInSegmentUs":J
    :cond_26
    add-int/lit8 v9, v9, 0x1

    .line 41653
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 41654
    .end local p32
    .end local p33
    .end local p34
    .end local p35
    .end local p36
    .end local p37
    .local v4, "editedFlags":[I
    .restart local v5    # "endIndex":I
    .local v7, "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .restart local v14    # "sizes":[I
    .restart local v15    # "timestamps":[J
    .end local v4    # "editedFlags":[I
    .end local v5    # "endIndex":I
    .end local v6    # "j":I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v14    # "sizes":[I
    .end local v15    # "timestamps":[J
    .restart local p32
    .restart local p33
    .restart local p34
    .restart local p35
    .restart local p36
    .restart local p37
    :cond_27
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JO;->A08:[J

    aget-wide v1, v1, v8

    add-long v25, v25, v1

    .line 41655
    .end local p14
    .end local p28
    .end local p33
    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 41656
    .end local p30
    .end local p31
    .local v6, "endIndices":[I
    .local v14, "sampleCount":I
    .restart local p14
    :cond_28
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v2, v2, v1

    const/16 v1, 0x17

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v1, 0x57

    if-eq v2, v1, :cond_29

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "bpFLG5yiCjaNBTatiJL832yJ"

    const/4 v1, 0x2

    aput-object v2, v3, v1

    goto :goto_18

    :cond_29
    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "uU6cy1oD"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    const-string v2, "C1luViVj"

    const/4 v1, 0x3

    aput-object v2, v3, v1

    goto :goto_18

    .line 41657
    :cond_2a
    move-object/from16 v13, v23

    goto/16 :goto_16

    .line 41658
    :cond_2b
    move-object/from16 v11, v22

    goto/16 :goto_15

    .line 41659
    :cond_2c
    move-object/from16 v14, v21

    goto/16 :goto_14

    .line 41660
    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 41661
    :cond_2e
    const/4 v7, 0x0

    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v4, v4, v3

    const/16 v3, 0x17

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v3, 0x57

    if-eq v4, v3, :cond_2f

    const/4 v4, 0x0

    const/16 v3, 0x5d

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    :cond_2f
    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v4, "aaylILcGBS6VDtnpev9y5b4BJZBYR2y3"

    const/4 v3, 0x7

    aput-object v4, v6, v3

    const-string v4, "0XgNPN0ZQsO4pNqGOHtpLFxyHM4aJjFv"

    const/4 v3, 0x4

    aput-object v4, v6, v3

    const/4 v4, 0x0

    const/16 v3, 0x5d

    invoke-static {v7, v4, v3}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_b

    .line 41662
    :cond_30
    move-object/from16 v0, p1

    goto/16 :goto_c

    .line 41663
    :cond_31
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    .line 41664
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_a

    .line 41665
    .end local v0    # "i":I
    :cond_32
    sub-long/2addr v1, v6

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/JO;->A06:J

    .line 41666
    const-wide/32 v7, 0xf4240

    move-wide v5, v1

    move-wide v9, v3

    invoke-static/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v7

    .line 41667
    .end local p17
    .local p12, "durationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/JR;

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v4, v20

    move-object/from16 v5, v24

    move-object/from16 v6, v23

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/JR;-><init>(Lcom/facebook/ads/redexgen/X/JO;[J[II[J[IJ)V

    return-object v0

    .line 41668
    .end local v2    # "editedMaximumSize":I
    .end local p15
    .end local p30
    .end local p31
    .end local p32
    .end local p34
    .end local p35
    .end local p36
    .end local p37
    .restart local v4    # "editedFlags":[I
    .local v5, "editedSampleCount":I
    .local v6, "endIndices":[I
    .restart local v7    # "omitClippedSample":Z
    .restart local v8    # "startIndices":[I
    .local v14, "sampleCount":I
    .restart local v15    # "timestamps":[J
    .restart local v16    # "editedMaximumSize":I
    .local p14, "sizes":[I
    .end local v0
    .end local v4    # "editedFlags":[I
    .end local v5    # "editedSampleCount":I
    .end local v6    # "endIndices":[I
    .end local v7    # "omitClippedSample":Z
    .end local v8    # "startIndices":[I
    .end local v14    # "sampleCount":I
    .end local p14
    .restart local p15
    .restart local p30
    .restart local p31
    .restart local p32
    .restart local p34
    .restart local p35
    .restart local p37
    :cond_33
    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/JO;->A05:J

    .line 41669
    const-wide/32 v27, 0xf4240

    move-wide/from16 v29, v0

    invoke-static/range {v25 .. v30}, Lcom/facebook/ads/redexgen/X/5C;->A0U(JJJ)J

    move-result-wide v7

    .line 41670
    .local v14, "editedDurationUs":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/JR;

    .end local v1    # "sampleIndex":I
    .local p12, "sampleIndex":I
    .end local v3    # "editedTimestamps":[J
    .local p14, "editedTimestamps":[J
    .end local p32
    .local p20, "editedFlags":[I
    .end local p30
    .local p21, "endIndices":[I
    .end local p34
    .end local p35
    .local p22, "omitClippedSample":Z
    .local p23, "startIndices":[I
    move-object/from16 v1, p1

    move-object v2, v14

    move-object v3, v11

    move/from16 v4, v20

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/JR;-><init>(Lcom/facebook/ads/redexgen/X/JO;[J[II[J[IJ)V

    return-object v0

    .line 41671
    .end local v9    # "flags":[I
    .end local v11    # "copyMetadata":Z
    .end local v13    # "editedSizes":[I
    .end local v14    # "editedDurationUs":J
    .end local v15    # "timestamps":[J
    .end local v16    # "editedMaximumSize":I
    .end local v17    # "cttsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v18    # "chunkOffsetsAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v19    # "stss":Lcom/facebook/ads/redexgen/X/4v;
    .end local v20    # "stszAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v21    # "nextSampleIndex":I
    .end local v22    # "remainingTimestampDeltaChanges":I
    .end local v23    # "remainingSamplesAtTimestampDelta":I
    .end local v24    # "chunkOffsetsAreLongs":Z
    .end local v25    # "stssAtom":Lcom/facebook/ads/redexgen/X/mD;
    .end local v26    # "remainingSamplesAtTimestampOffset":I
    .end local v27    # "nextSynchronizationSampleIndex":I
    .end local v28    # "stsc":Lcom/facebook/ads/redexgen/X/4v;
    .end local v29    # "rechunkFixedSizeSamples":Z
    .end local v30    # "remainingTimestampOffsetChanges":I
    .end local v31    # "remainingSynchronizationSamples":I
    .end local v32    # "sampleMimeType":Ljava/lang/String;
    .end local v33    # "maximumSize":I
    .end local p0    # "chunkOffsets":Lcom/facebook/ads/redexgen/X/4v;
    .end local p1    # "fixedSampleSize":I
    .end local p2    # "ctts":Lcom/facebook/ads/redexgen/X/4v;
    .end local p3
    .end local p4
    .end local p5
    .end local p7
    .end local p8
    .end local p10
    .end local p12
    .end local p13
    .end local p14
    .end local p15
    .end local p16
    .end local p17
    .end local p19
    .end local p20
    .end local p21
    .end local p22
    .end local p23
    .end local p26
    .end local p31
    .end local p37
    .local v1, "stz2Atom":Lcom/facebook/ads/redexgen/X/mD;
    .local v12, "stszAtom":Lcom/facebook/ads/redexgen/X/mD;
    :cond_34
    const/16 v2, 0x190

    const/16 v1, 0x2a

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0
.end method

.method public static A0M(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0N()Ljava/nio/ByteBuffer;
    .locals 2

    .line 41672
    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static A0O(Lcom/facebook/ads/redexgen/X/mE;Lcom/facebook/ads/redexgen/X/HK;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZLcom/facebook/ads/redexgen/X/kO;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/mE;",
            "Lcom/facebook/ads/redexgen/X/HK;",
            "J",
            "Lcom/facebook/ads/androidx/media3/common/DrmInitData;",
            "ZZ",
            "Lcom/facebook/ads/redexgen/X/kO<",
            "Lcom/facebook/ads/redexgen/X/JO;",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/JR;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41673
    .local p7, "modifyTrackFunction":Lcom/facebook/ads/redexgen/X/kO;, "Lcom/google/common/base/Function<Lcom/facebook/ads/androidx/media3/extractor/mp4/Track;Lcom/facebook/ads/androidx/media3/extractor/mp4/Track;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41674
    .local v1, "trackSampleTables":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackSampleTable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 41675
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mE;->A01:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/mE;

    .line 41676
    .local v3, "atom":Lcom/facebook/ads/redexgen/X/mE;
    iget v1, v4, Lcom/facebook/ads/redexgen/X/Iu;->A00:I

    const v0, 0x7472616b

    if-eq v1, v0, :cond_0

    .line 41677
    .end local v3    # "atom":Lcom/facebook/ads/redexgen/X/mE;
    .end local v4
    .end local v6
    .end local v8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41678
    :cond_0
    const v0, 0x6d766864

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/mE;->A07(I)Lcom/facebook/ads/redexgen/X/mD;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/mD;

    .line 41679
    move/from16 v10, p6

    move/from16 v9, p5

    move-object v8, p4

    move-wide v6, p2

    invoke-static/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/J0;->A0J(Lcom/facebook/ads/redexgen/X/mE;Lcom/facebook/ads/redexgen/X/mD;JLcom/facebook/ads/androidx/media3/common/DrmInitData;ZZ)Lcom/facebook/ads/redexgen/X/JO;

    move-result-object v0

    .line 41680
    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/kO;->A4B(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/JO;

    .line 41681
    .local v4, "track":Lcom/facebook/ads/redexgen/X/JO;
    if-nez v5, :cond_1

    goto :goto_1

    .line 41682
    :cond_1
    const v0, 0x6d646961

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/mE;

    .line 41683
    const v6, 0x6d696e66

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "jveTcVJC"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "kDhQUkZe"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v0

    .line 41684
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/mE;

    .line 41685
    const v0, 0x7374626c

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/mE;->A06(I)Lcom/facebook/ads/redexgen/X/mE;

    move-result-object v0

    .line 41686
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/mE;

    .line 41687
    .local v6, "stblAtom":Lcom/facebook/ads/redexgen/X/mE;
    invoke-static {v5, v0, p1}, Lcom/facebook/ads/redexgen/X/J0;->A0L(Lcom/facebook/ads/redexgen/X/JO;Lcom/facebook/ads/redexgen/X/mE;Lcom/facebook/ads/redexgen/X/HK;)Lcom/facebook/ads/redexgen/X/JR;

    move-result-object v0

    .line 41688
    .local v8, "trackSampleTable":Lcom/facebook/ads/redexgen/X/JR;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 41689
    .end local v2    # "i":I
    :cond_3
    return-object v3
.end method

.method public static A0P()V
    .locals 1

    const/16 v0, 0x50b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/J0;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x46t
        0x4at
        0x9t
        0x1et
        0x1et
        0x19t
        0x4at
        0x3t
        0x4t
        0x1ct
        0xbt
        0x6t
        0x3t
        0xet
        0xbt
        0x7t
        0x55t
        0x42t
        0x4at
        0x46t
        0x4et
        0x49t
        0x4et
        0x49t
        0x40t
        0x74t
        0x46t
        0x4at
        0x57t
        0x4bt
        0x42t
        0x54t
        0x66t
        0x53t
        0x73t
        0x4et
        0x4at
        0x42t
        0x54t
        0x53t
        0x46t
        0x4at
        0x57t
        0x63t
        0x42t
        0x4bt
        0x53t
        0x46t
        0x7t
        0x55t
        0x59t
        0xbt
        0x1ct
        0x14t
        0x18t
        0x10t
        0x17t
        0x10t
        0x17t
        0x1et
        0x2at
        0x18t
        0x14t
        0x9t
        0x15t
        0x1ct
        0xat
        0x38t
        0xdt
        0x2dt
        0x10t
        0x14t
        0x1ct
        0xat
        0xdt
        0x18t
        0x14t
        0x9t
        0x36t
        0x1ft
        0x1ft
        0xat
        0x1ct
        0xdt
        0x59t
        0x44t
        0x48t
        0x1at
        0xdt
        0x5t
        0x9t
        0x1t
        0x6t
        0x1t
        0x6t
        0xft
        0x3bt
        0x9t
        0x5t
        0x18t
        0x4t
        0xdt
        0x1bt
        0x21t
        0x6t
        0x2bt
        0x0t
        0x1dt
        0x6t
        0x3t
        0x48t
        0x63t
        0x6ft
        0x3dt
        0x2at
        0x22t
        0x2et
        0x26t
        0x21t
        0x26t
        0x21t
        0x28t
        0x1bt
        0x26t
        0x22t
        0x2at
        0x3ct
        0x3bt
        0x2et
        0x22t
        0x3ft
        0xbt
        0x2at
        0x23t
        0x3bt
        0x2et
        0xct
        0x27t
        0x2et
        0x21t
        0x28t
        0x2at
        0x3ct
        0x6ft
        0x78t
        0x62t
        0x30t
        0x27t
        0x2ft
        0x23t
        0x2bt
        0x2ct
        0x2bt
        0x2ct
        0x25t
        0x11t
        0x3bt
        0x2ct
        0x21t
        0x2at
        0x30t
        0x2dt
        0x2ct
        0x2bt
        0x38t
        0x23t
        0x36t
        0x2bt
        0x2dt
        0x2ct
        0x11t
        0x23t
        0x2ft
        0x32t
        0x2et
        0x27t
        0x31t
        0x62t
        0x63t
        0x56t
        0x4dt
        0x4ft
        0x72t
        0x43t
        0x50t
        0x51t
        0x47t
        0x50t
        0x51t
        0x1et
        0x23t
        0x38t
        0x3et
        0x28t
        0x28t
        0x32t
        0x2dt
        0x3et
        0x7bt
        0x34t
        0x39t
        0x2et
        0x4t
        0x28t
        0x32t
        0x21t
        0x3et
        0x37t
        0x10t
        0x1dt
        0x11t
        0x10t
        0xdt
        0x17t
        0xdt
        0xat
        0x1bt
        0x10t
        0xat
        0x5et
        0xdt
        0xat
        0x1ct
        0x12t
        0x5et
        0x1ct
        0x11t
        0x6t
        0x5et
        0x18t
        0x11t
        0xct
        0x5et
        0xat
        0xct
        0x1ft
        0x1dt
        0x15t
        0x5et
        0x8t
        0x2ft
        0x37t
        0x20t
        0x2dt
        0x28t
        0x25t
        0x61t
        0x32t
        0x20t
        0x2ct
        0x31t
        0x2dt
        0x24t
        0x61t
        0x33t
        0x20t
        0x35t
        0x24t
        0x61t
        0x27t
        0x2et
        0x33t
        0x61t
        0x5t
        0x2et
        0x2dt
        0x23t
        0x38t
        0x61t
        0x15t
        0x33t
        0x34t
        0x24t
        0x9t
        0x5t
        0x61t
        0xct
        0xdt
        0x11t
        0x61t
        0x32t
        0x35t
        0x33t
        0x24t
        0x20t
        0x2ct
        0x7bt
        0x61t
        0x3ft
        0x13t
        0x1et
        0x14t
        0x1dt
        0x0t
        0x1ft
        0x17t
        0x16t
        0x52t
        0x1t
        0x13t
        0x1ft
        0x2t
        0x1et
        0x17t
        0x52t
        0x6t
        0x13t
        0x10t
        0x1et
        0x17t
        0x52t
        0x5at
        0x1t
        0x6t
        0x10t
        0x1et
        0x5bt
        0x52t
        0x1ft
        0x1bt
        0x1t
        0x1t
        0x1bt
        0x1ct
        0x15t
        0x52t
        0x1t
        0x13t
        0x1ft
        0x2t
        0x1et
        0x17t
        0x52t
        0x16t
        0x17t
        0x1t
        0x11t
        0x0t
        0x1bt
        0x2t
        0x6t
        0x1bt
        0x1dt
        0x1ct
        0x52t
        0x5at
        0x1t
        0x6t
        0x1t
        0x16t
        0x5bt
        0x21t
        0x1et
        0x1bt
        0x1dt
        0x26t
        0xbt
        0xft
        0xat
        0x5et
        0x66t
        0x64t
        0x7dt
        0x7dt
        0x68t
        0x69t
        0x2dt
        0x60t
        0x68t
        0x79t
        0x6ct
        0x69t
        0x6ct
        0x79t
        0x6ct
        0x2dt
        0x7at
        0x64t
        0x79t
        0x65t
        0x2dt
        0x78t
        0x63t
        0x66t
        0x63t
        0x62t
        0x7at
        0x63t
        0x2dt
        0x66t
        0x68t
        0x74t
        0x2dt
        0x64t
        0x63t
        0x69t
        0x68t
        0x75t
        0x37t
        0x2dt
        0x5dt
        0x7bt
        0x68t
        0x6at
        0x62t
        0x29t
        0x61t
        0x68t
        0x7at
        0x29t
        0x67t
        0x66t
        0x29t
        0x7at
        0x68t
        0x64t
        0x79t
        0x65t
        0x6ct
        0x29t
        0x7dt
        0x68t
        0x6bt
        0x65t
        0x6ct
        0x29t
        0x7at
        0x60t
        0x73t
        0x6ct
        0x29t
        0x60t
        0x67t
        0x6ft
        0x66t
        0x7bt
        0x64t
        0x68t
        0x7dt
        0x60t
        0x66t
        0x67t
        0x6dt
        0x56t
        0x5dt
        0x40t
        0x48t
        0x5dt
        0x5bt
        0x4ct
        0x5dt
        0x5ct
        0x18t
        0x5dt
        0x56t
        0x5ct
        0x18t
        0x57t
        0x5et
        0x18t
        0x5bt
        0x50t
        0x4dt
        0x56t
        0x53t
        0x18t
        0x5ct
        0x59t
        0x4ct
        0x59t
        0x5at
        0x61t
        0x7ct
        0x7at
        0x7ft
        0x7ft
        0x60t
        0x7dt
        0x7bt
        0x6at
        0x6bt
        0x2ft
        0x6ct
        0x60t
        0x63t
        0x60t
        0x7dt
        0x2ft
        0x7bt
        0x76t
        0x7ft
        0x6at
        0x35t
        0x2ft
        0x48t
        0x73t
        0x6et
        0x68t
        0x6dt
        0x6dt
        0x72t
        0x6ft
        0x69t
        0x78t
        0x79t
        0x3dt
        0x74t
        0x73t
        0x74t
        0x69t
        0x74t
        0x7ct
        0x71t
        0x42t
        0x79t
        0x74t
        0x6et
        0x6dt
        0x71t
        0x7ct
        0x64t
        0x42t
        0x79t
        0x78t
        0x71t
        0x7ct
        0x64t
        0x42t
        0x6dt
        0x6ft
        0x78t
        0x6et
        0x78t
        0x73t
        0x69t
        0x42t
        0x7bt
        0x71t
        0x7ct
        0x7at
        0x69t
        0x52t
        0x4ft
        0x49t
        0x4ct
        0x4ct
        0x53t
        0x4et
        0x48t
        0x59t
        0x58t
        0x1ct
        0x51t
        0x59t
        0x58t
        0x55t
        0x5dt
        0x1ct
        0x4et
        0x5dt
        0x48t
        0x59t
        0x12t
        0x19t
        0x22t
        0x3ft
        0x39t
        0x3ct
        0x3ct
        0x23t
        0x3et
        0x38t
        0x29t
        0x28t
        0x6ct
        0x23t
        0x2et
        0x39t
        0x13t
        0x29t
        0x34t
        0x38t
        0x29t
        0x22t
        0x3ft
        0x25t
        0x23t
        0x22t
        0x13t
        0x2at
        0x20t
        0x2dt
        0x2bt
        0x64t
        0x5ft
        0x42t
        0x44t
        0x41t
        0x41t
        0x5et
        0x43t
        0x45t
        0x54t
        0x55t
        0x11t
        0x5et
        0x53t
        0x44t
        0x6et
        0x45t
        0x48t
        0x41t
        0x54t
        0xbt
        0x11t
        0x53t
        0x68t
        0x75t
        0x73t
        0x76t
        0x76t
        0x69t
        0x74t
        0x72t
        0x63t
        0x62t
        0x26t
        0x74t
        0x63t
        0x62t
        0x73t
        0x65t
        0x63t
        0x62t
        0x59t
        0x75t
        0x72t
        0x6ft
        0x6at
        0x6at
        0x59t
        0x76t
        0x6ft
        0x65t
        0x72t
        0x73t
        0x74t
        0x63t
        0x59t
        0x6et
        0x63t
        0x67t
        0x62t
        0x63t
        0x74t
        0x34t
        0xft
        0x12t
        0x14t
        0x11t
        0x11t
        0xet
        0x13t
        0x15t
        0x4t
        0x5t
        0x41t
        0x15t
        0x8t
        0xct
        0x8t
        0xft
        0x6t
        0x3et
        0x8t
        0xft
        0x7t
        0xet
        0x3et
        0x11t
        0x13t
        0x4t
        0x12t
        0x4t
        0xft
        0x15t
        0x3et
        0x7t
        0xdt
        0x0t
        0x6t
        0x60t
        0x71t
        0x71t
        0x6dt
        0x68t
        0x62t
        0x60t
        0x75t
        0x68t
        0x6et
        0x6ft
        0x2et
        0x75t
        0x75t
        0x6ct
        0x6dt
        0x2at
        0x79t
        0x6ct
        0x6dt
        0x21t
        0x30t
        0x30t
        0x2ct
        0x29t
        0x23t
        0x21t
        0x34t
        0x29t
        0x2ft
        0x2et
        0x6ft
        0x38t
        0x6dt
        0x23t
        0x21t
        0x2dt
        0x25t
        0x32t
        0x21t
        0x6dt
        0x2dt
        0x2ft
        0x34t
        0x29t
        0x2ft
        0x2et
        0x4et
        0x5ft
        0x5ft
        0x43t
        0x46t
        0x4ct
        0x4et
        0x5bt
        0x46t
        0x40t
        0x41t
        0x0t
        0x57t
        0x2t
        0x42t
        0x5ft
        0x1bt
        0x2t
        0x4ct
        0x4at
        0x4et
        0x2t
        0x19t
        0x1ft
        0x17t
        0x5ft
        0x4et
        0x4et
        0x52t
        0x57t
        0x5dt
        0x5ft
        0x4at
        0x57t
        0x51t
        0x50t
        0x11t
        0x46t
        0x13t
        0x53t
        0x4et
        0xat
        0x13t
        0x48t
        0x4at
        0x4at
        0x3dt
        0x2ct
        0x2ct
        0x30t
        0x35t
        0x3ft
        0x3dt
        0x28t
        0x35t
        0x33t
        0x32t
        0x73t
        0x24t
        0x71t
        0x2dt
        0x29t
        0x35t
        0x3ft
        0x37t
        0x28t
        0x35t
        0x31t
        0x39t
        0x71t
        0x28t
        0x24t
        0x6ft
        0x3bt
        0x50t
        0x44t
        0x55t
        0x58t
        0x5et
        0x1et
        0x2t
        0x56t
        0x41t
        0x41t
        0x3at
        0x2et
        0x3ft
        0x32t
        0x34t
        0x74t
        0x3at
        0x38t
        0x68t
        0x2at
        0x3et
        0x2ft
        0x22t
        0x24t
        0x64t
        0x2at
        0x28t
        0x7ft
        0x2et
        0x3at
        0x2bt
        0x26t
        0x20t
        0x60t
        0x2et
        0x23t
        0x2et
        0x2ct
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x22t
        0x2et
        0x31t
        0x6et
        0x34t
        0x21t
        0x4dt
        0x59t
        0x48t
        0x45t
        0x43t
        0x3t
        0x49t
        0x4dt
        0x4ft
        0x1ft
        0x3t
        0x17t
        0x6t
        0xbt
        0xdt
        0x4dt
        0x4t
        0xet
        0x3t
        0x1t
        0x67t
        0x73t
        0x62t
        0x6ft
        0x69t
        0x29t
        0x61t
        0x31t
        0x37t
        0x37t
        0x2bt
        0x67t
        0x6at
        0x67t
        0x71t
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
        0x4t
        0x4ct
        0x1ct
        0x1at
        0x1at
        0x6t
        0x46t
        0x47t
        0x4at
        0x5ct
        0x22t
        0x36t
        0x27t
        0x2at
        0x2ct
        0x6ct
        0x2et
        0x2bt
        0x22t
        0x72t
        0x17t
        0x3t
        0x12t
        0x1ft
        0x19t
        0x59t
        0x1bt
        0x1et
        0x1bt
        0x47t
        0x60t
        0x74t
        0x65t
        0x68t
        0x6et
        0x2et
        0x6ct
        0x71t
        0x35t
        0x60t
        0x2ct
        0x6dt
        0x60t
        0x75t
        0x6ct
        0x16t
        0x2t
        0x13t
        0x1et
        0x18t
        0x58t
        0x1at
        0x7t
        0x12t
        0x10t
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0xat
        0x4at
        0x55t
        0x50t
        0x56t
        0x59t
        0x4dt
        0x5ct
        0x51t
        0x57t
        0x17t
        0x4at
        0x59t
        0x4ft
        0x4at
        0x5et
        0x4ft
        0x42t
        0x44t
        0x4t
        0x5ft
        0x59t
        0x5et
        0x4et
        0x6t
        0x43t
        0x4ft
        0x72t
        0x66t
        0x77t
        0x7at
        0x7ct
        0x3ct
        0x65t
        0x7dt
        0x77t
        0x3dt
        0x77t
        0x67t
        0x60t
        0x20t
        0x34t
        0x25t
        0x28t
        0x2et
        0x6et
        0x37t
        0x2ft
        0x25t
        0x6ft
        0x25t
        0x35t
        0x32t
        0x6ft
        0x29t
        0x25t
        0x44t
        0x50t
        0x41t
        0x4ct
        0x4at
        0xat
        0x53t
        0x4bt
        0x41t
        0xbt
        0x41t
        0x51t
        0x56t
        0xbt
        0x4dt
        0x41t
        0x1et
        0x55t
        0x57t
        0x4at
        0x43t
        0x4ct
        0x49t
        0x40t
        0x18t
        0x49t
        0x47t
        0x57t
        0x58t
        0x4ct
        0x5dt
        0x50t
        0x56t
        0x16t
        0x4ft
        0x57t
        0x5dt
        0x17t
        0x5dt
        0x4dt
        0x4at
        0x17t
        0x4ct
        0x51t
        0x5dt
        0x2t
        0x49t
        0x4bt
        0x56t
        0x5ft
        0x50t
        0x55t
        0x5ct
        0x4t
        0x49t
        0xbt
        0x36t
        0x37t
        0x36t
        0x64t
        0x57t
        0x56t
        0x57t
        0x47t
        0x4ft
        0x49t
        0x42t
        0x4ft
        0x32t
        0x34t
        0x3ft
        0x22t
        0x4at
        0x41t
        0x40t
        0x45t
        0x4dt
        0x68t
        0x5dt
        0x46t
        0x44t
        0x7at
        0x40t
        0x53t
        0x4ct
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x59t
        0x46t
        0x5at
        0x40t
        0x5dt
        0x40t
        0x5ft
        0x4ct
        0x31t
        0x25t
        0x3at
        0x36t
        0x77t
        0x36t
        0x23t
        0x38t
        0x3at
        0x77t
        0x3et
        0x24t
        0x77t
        0x3at
        0x36t
        0x39t
        0x33t
        0x36t
        0x23t
        0x38t
        0x25t
        0x2et
        0x3bt
        0x2bt
        0x20t
        0x21t
        0x68t
        0x29t
        0x3ct
        0x27t
        0x25t
        0x68t
        0x21t
        0x3bt
        0x68t
        0x25t
        0x29t
        0x26t
        0x2ct
        0x29t
        0x3ct
        0x27t
        0x3at
        0x31t
        0xft
        0x1et
        0x15t
        0x18t
        0x5bt
        0x1at
        0xft
        0x14t
        0x16t
        0x5bt
        0x12t
        0x8t
        0x5bt
        0x16t
        0x1at
        0x15t
        0x1ft
        0x1at
        0xft
        0x14t
        0x9t
        0x2t
        0x5t
        0x1at
        0x17t
        0x16t
        0x1ct
        0x5ct
        0x40t
        0x14t
        0x3t
        0x3t
        0x43t
        0x5ct
        0x51t
        0x50t
        0x5at
        0x1at
        0x54t
        0x43t
        0x5t
        0x4t
        0x23t
        0x3ct
        0x31t
        0x30t
        0x3at
        0x7at
        0x34t
        0x23t
        0x36t
        0x48t
        0x57t
        0x5at
        0x5bt
        0x51t
        0x11t
        0x5at
        0x51t
        0x52t
        0x5ct
        0x47t
        0x13t
        0x48t
        0x57t
        0x4dt
        0x57t
        0x51t
        0x50t
        0x44t
        0x5bt
        0x56t
        0x57t
        0x5dt
        0x1dt
        0x5at
        0x57t
        0x44t
        0x51t
        0x1at
        0x5t
        0x8t
        0x9t
        0x3t
        0x43t
        0x1t
        0x1ct
        0x9t
        0xbt
        0x5ft
        0x40t
        0x4dt
        0x4ct
        0x46t
        0x6t
        0x51t
        0x4t
        0x5ft
        0x47t
        0x4dt
        0x7t
        0x46t
        0x47t
        0x1bt
        0x7t
        0x5ft
        0x59t
        0x11t
        0x3t
        0x1ct
        0x11t
        0x10t
        0x1at
        0x5at
        0xdt
        0x58t
        0x3t
        0x1bt
        0x11t
        0x5bt
        0x1at
        0x1bt
        0x47t
        0x5bt
        0x3t
        0x5t
        0x4ct
    .end array-data
.end method

.method public static A0Q(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 3

    .line 41690
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    .line 41691
    .local v0, "endPosition":I
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41692
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v1

    const v0, 0x68646c72    # 4.3148E24f

    if-eq v1, v0, :cond_0

    .line 41693
    add-int/lit8 v2, v2, 0x4

    .line 41694
    :cond_0
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41695
    return-void
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/4v;IIIIILcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/Iy;I)V
    .locals 33
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Adding Colorspace support for AV1"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41696
    move/from16 v31, p2

    move-object/from16 v25, p6

    move/from16 v32, p1

    add-int/lit8 v0, v31, 0x8

    add-int/lit8 v0, v0, 0x8

    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41697
    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41698
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v29

    .line 41699
    .local v5, "width":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v28

    .line 41700
    .local v6, "height":I
    const/16 v30, 0x0

    .line 41701
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    const/high16 v27, 0x3f800000    # 1.0f

    .line 41702
    .local v8, "pixelWidthHeightRatio":F
    const/16 v0, 0x32

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41703
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v9

    .line 41704
    .local v9, "childPosition":I
    const v1, 0x656e6376

    move-object/from16 p0, p7

    move/from16 p1, p3

    move/from16 v0, v32

    if-ne v0, v1, :cond_1

    .line 41705
    move/from16 v1, v31

    move/from16 v0, p1

    invoke-static {v10, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A08(Lcom/facebook/ads/redexgen/X/4v;II)Landroid/util/Pair;

    move-result-object v2

    .line 41706
    .local v10, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v2, :cond_0

    .line 41707
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 41708
    .end local p8    # null:I
    .local v12, "atomType":I
    if-nez v25, :cond_34

    .line 41709
    const/16 v25, 0x0

    .line 41710
    .end local p13
    .local v3, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Iy;->A03:[Lcom/facebook/ads/redexgen/X/JP;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JP;

    aput-object v0, v1, p8

    .line 41711
    :cond_0
    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41712
    .end local v10    # "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    :cond_1
    const/4 v6, 0x0

    .line 41713
    .local v10, "mimeType":Ljava/lang/String;
    const v1, 0x6d317620

    move/from16 v0, v32

    if-ne v0, v1, :cond_33

    .line 41714
    const/16 v2, 0x4db

    const/16 v1, 0xa

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41715
    :cond_2
    :goto_1
    const/4 v12, 0x0

    .line 41716
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v13, 0x0

    .line 41717
    .local v14, "codecs":Ljava/lang/String;
    const/16 v26, 0x0

    .line 41718
    .local v15, "projectionData":[B
    const/4 v11, -0x1

    .line 41719
    .local v16, "stereoMode":I
    const/16 v17, 0x0

    .line 41720
    .local v17, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    const/4 v8, -0x1

    .line 41721
    .local v18, "colorSpace":I
    const/4 v5, -0x1

    .line 41722
    .local v19, "colorRange":I
    const/4 v7, -0x1

    .line 41723
    .local v20, "colorTransfer":I
    const/4 v4, 0x0

    .line 41724
    .end local v16    # "stereoMode":I
    .end local v18    # "colorSpace":I
    .end local v19    # "colorRange":I
    .end local v20    # "colorTransfer":I
    .local v21, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v22, "stereoMode":I
    .local v23, "colorSpace":I
    .local v24, "colorRange":I
    .local v25, "colorTransfer":I
    :goto_2
    sub-int v3, v9, v31

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .end local v3    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .local v18, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "UV8763Z4eJ1eqclMrzFGVnLWDHgV5Y7v"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    move/from16 v0, p1

    if-ge v3, v0, :cond_5

    .line 41725
    invoke-virtual {v10, v9}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41726
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    .line 41727
    .local v11, "childStartPosition":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v14

    .line 41728
    .local v3, "childAtomSize":I
    if-nez v14, :cond_b

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v2

    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v20, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    sub-int v2, v2, v31

    move/from16 v0, p1

    if-ne v2, v0, :cond_b

    .line 41729
    .end local v5    # "width":I
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v13
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .end local v23    # "colorSpace":I
    .end local v24    # "colorRange":I
    .end local v25    # "colorTransfer":I
    .restart local v4
    .local v6, "colorRange":I
    .local v7, "colorTransfer":I
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v27
    .restart local v28
    .restart local v29
    .restart local v30
    .restart local v31
    .restart local v32
    .restart local p4    # null:I
    :cond_5
    if-nez v6, :cond_6

    .line 41730
    return-void

    .line 41731
    :cond_6
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 41732
    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0g(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41733
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41734
    .end local p4    # null:I
    .restart local v14    # "codecs":Ljava/lang/String;
    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/2p;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 41735
    .end local v32
    .restart local v5    # "width":I
    move/from16 v0, v29

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0r(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 41736
    .end local v31
    .local v8, "height":I
    move/from16 v0, v28

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0f(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 41737
    .end local v30
    .local v11, "pixelWidthHeightRatio":F
    move/from16 v0, v27

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0Y(F)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41738
    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0l(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 41739
    .end local v29
    .restart local v15    # "projectionData":[B
    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A13([B)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41740
    .end local v22    # "stereoMode":I
    .local v13, "stereoMode":I
    invoke-virtual {v0, v11}, Lcom/facebook/ads/redexgen/X/2p;->A0o(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41741
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 41742
    .end local v18    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .local v0, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 41743
    .local v1, "formatBuilder":Lcom/facebook/ads/redexgen/X/2p;
    const/4 v0, -0x1

    .end local v0    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .restart local v18    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    if-ne v8, v0, :cond_7

    if-ne v5, v0, :cond_7

    if-ne v7, v0, :cond_7

    if-eqz v4, :cond_8

    .line 41744
    :cond_7
    nop

    .line 41745
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "iNSGYMD2WjZqNKpCGRiE11Ag0KcZMJ4O"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kUdBVFFCHZ7OFsLW60c88KXDOWnZQcPh"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_3
    new-instance v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    invoke-direct {v0, v8, v5, v7, v4}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;-><init>(III[B)V

    .line 41746
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0t(Lcom/facebook/ads/androidx/media3/common/ColorInfo;)Lcom/facebook/ads/redexgen/X/2p;

    .line 41747
    :cond_8
    if-eqz v17, :cond_9

    .line 41748
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A01(Lcom/facebook/ads/redexgen/X/Iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A03(J)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v2

    .line 41749
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A00(Lcom/facebook/ads/redexgen/X/Iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A03(J)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    .line 41750
    :cond_9
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 41751
    return-void

    .line 41752
    :cond_a
    const/4 v4, 0x0

    goto :goto_3

    .line 41753
    .end local v13    # "stereoMode":I
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_b
    if-lez v14, :cond_32

    const/4 v15, 0x1

    :goto_4
    const/16 v3, 0x442

    const/16 v2, 0x1e

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v0, 0x57

    if-eq v2, v0, :cond_f

    invoke-static {v15, v3}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41754
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41755
    .local v1, "childAtomType":I
    const v0, 0x61766343

    if-ne v2, v0, :cond_10

    .line 41756
    :goto_5
    if-nez v6, :cond_e

    const/4 v2, 0x1

    :goto_6
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41757
    const/16 v3, 0x4b6

    const/16 v2, 0x9

    const/16 v0, 0x33

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41758
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41759
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/Gv;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/Gv;

    move-result-object v2

    .line 41760
    .local v10, "avcConfig":Lcom/facebook/ads/redexgen/X/Gv;
    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/Gv;->A05:Ljava/util/List;

    .line 41761
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "stereoMode":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .local p8, "mimeType":Ljava/lang/String;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/Gv;->A02:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Iy;->A00:I

    .line 41762
    if-nez v30, :cond_c

    .line 41763
    iget v0, v2, Lcom/facebook/ads/redexgen/X/Gv;->A00:F

    move/from16 v27, v0

    .line 41764
    :cond_c
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/Gv;->A04:Ljava/lang/String;

    .line 41765
    .end local v10    # "avcConfig":Lcom/facebook/ads/redexgen/X/Gv;
    .end local v14    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    .end local v4
    .end local v6    # "colorRange":I
    .end local v20
    .end local v27
    .end local v29
    .end local v30
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .restart local v8    # "height":I
    .restart local v13    # "stereoMode":I
    .restart local v15    # "projectionData":[B
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_d
    :goto_7
    add-int/2addr v9, v14

    .line 41766
    .end local v1    # "childAtomType":I
    .end local v3    # "childAtomSize":I
    .end local v11    # "pixelWidthHeightRatio":F
    goto/16 :goto_2

    .line 41767
    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    sget-object v16, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v2, "a7F234D58gsc4SWrdwKeU3Lp"

    const/4 v0, 0x2

    aput-object v2, v16, v0

    invoke-static {v15, v3}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41768
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41769
    .local v1, "childAtomType":I
    const v0, 0x61766343

    if-ne v2, v0, :cond_10

    goto :goto_5

    .line 41770
    .end local v2    # "codecs":Ljava/lang/String;
    .end local v13    # "stereoMode":I
    .end local p8    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v14    # "codecs":Ljava/lang/String;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_10
    const v0, 0x68766343

    if-ne v2, v0, :cond_13

    .line 41771
    if-nez v6, :cond_12

    const/4 v2, 0x1

    :goto_8
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41772
    const/16 v3, 0x4d1

    const/16 v2, 0xa

    const/16 v0, 0x54

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41773
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41774
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/HL;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/HL;

    move-result-object v2

    .line 41775
    .local v10, "hevcConfig":Lcom/facebook/ads/redexgen/X/HL;
    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/HL;->A08:Ljava/util/List;

    .line 41776
    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v13    # "stereoMode":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local p8    # "mimeType":Ljava/lang/String;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/HL;->A05:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Iy;->A00:I

    .line 41777
    if-nez v30, :cond_11

    .line 41778
    iget v0, v2, Lcom/facebook/ads/redexgen/X/HL;->A00:F

    move/from16 v27, v0

    .line 41779
    :cond_11
    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/HL;->A07:Ljava/lang/String;

    .line 41780
    .end local v14    # "codecs":Ljava/lang/String;
    .local v2, "codecs":Ljava/lang/String;
    iget v8, v2, Lcom/facebook/ads/redexgen/X/HL;->A02:I

    .line 41781
    .end local v23    # "colorSpace":I
    .local v14, "colorSpace":I
    .end local v2    # "codecs":Ljava/lang/String;
    .local v19, "codecs":Ljava/lang/String;
    iget v5, v2, Lcom/facebook/ads/redexgen/X/HL;->A01:I

    .line 41782
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    iget v7, v2, Lcom/facebook/ads/redexgen/X/HL;->A03:I

    .line 41783
    .end local v25    # "colorTransfer":I
    .local v10, "colorTransfer":I
    goto :goto_7

    .line 41784
    :cond_12
    const/4 v2, 0x0

    goto :goto_8

    .line 41785
    .end local v2    # "colorRange":I
    .end local v13    # "stereoMode":I
    .end local v19    # "codecs":Ljava/lang/String;
    .end local p8    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .local v14, "codecs":Ljava/lang/String;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_13
    const v0, 0x64766343

    if-eq v2, v0, :cond_14

    const v0, 0x64767643

    if-ne v2, v0, :cond_15

    .line 41786
    .end local v5    # "width":I
    .end local v8    # "height":I
    .end local v12
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .end local v23    # "colorSpace":I
    .end local v24    # "colorRange":I
    .end local v25    # "colorTransfer":I
    .restart local v4
    .local v6, "colorRange":I
    .local v7, "colorTransfer":I
    .restart local v27
    .restart local v28
    .restart local v29
    .restart local v30
    .restart local v31
    .restart local v32
    .restart local p4    # null:I
    :cond_14
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/H6;->A00(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/redexgen/X/H6;

    move-result-object v0

    .line 41787
    .local v5, "dolbyVisionConfig":Lcom/facebook/ads/redexgen/X/H6;
    if-eqz v0, :cond_d

    .line 41788
    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/H6;->A02:Ljava/lang/String;

    .line 41789
    .end local p4    # null:I
    .restart local v14    # "codecs":Ljava/lang/String;
    const/16 v2, 0x4bf

    const/16 v1, 0x12

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 41790
    :cond_15
    const v0, 0x76706343

    if-ne v2, v0, :cond_1a

    .line 41791
    if-nez v6, :cond_19

    const/4 v2, 0x1

    :goto_9
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41792
    const v2, 0x76703038

    move/from16 v0, v32

    if-ne v0, v2, :cond_18

    const/16 v3, 0x4e5

    const/16 v2, 0x13

    const/16 v0, 0x4f

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41793
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    :goto_a
    add-int/lit8 v0, v1, 0xc

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41794
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41795
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    .line 41796
    .local v10, "fullRangeFlag":Z
    :goto_b
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 41797
    .local v13, "colorPrimaries":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 41798
    .local v27, "transferCharacteristics":I
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v8

    .line 41799
    if-eqz v2, :cond_16

    const/4 v5, 0x1

    .line 41800
    .end local v24
    .local v19, "colorRange":I
    :goto_c
    invoke-static {v0}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v7

    .line 41801
    .end local v13    # "colorPrimaries":I
    .end local v25
    .end local v27    # "transferCharacteristics":I
    .local v10, "colorTransfer":I
    goto/16 :goto_7

    .line 41802
    :cond_16
    const/4 v5, 0x2

    goto :goto_c

    .line 41803
    :cond_17
    const/4 v2, 0x0

    goto :goto_b

    .line 41804
    :cond_18
    const/16 v3, 0x4f8

    const/16 v2, 0x13

    const/16 v0, 0x13

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 41805
    :cond_19
    const/4 v2, 0x0

    goto :goto_9

    .line 41806
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v19    # "colorRange":I
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_1a
    const v3, 0x61763143

    sget-object v16, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v16, v0

    const/4 v15, 0x4

    aget-object v18, v16, v15

    const/16 v15, 0x1e

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v0, v16

    if-eq v0, v15, :cond_1c

    sget-object v16, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v15, "obOtuNmXmw3Srs7TxB3R2veWOWOW6QJb"

    const/4 v0, 0x5

    aput-object v15, v16, v0

    if-ne v2, v3, :cond_1d

    .line 41807
    :goto_d
    if-nez v6, :cond_1b

    const/4 v2, 0x1

    :goto_e
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41808
    const/16 v3, 0x4ac

    const/16 v2, 0xa

    const/16 v0, 0x53

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41809
    .end local v10    # "mimeType":Ljava/lang/String;
    .restart local v2    # "mimeType":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41810
    invoke-static {v10}, Lcom/facebook/ads/redexgen/X/J0;->A0B(Lcom/facebook/ads/redexgen/X/4v;)Lcom/facebook/ads/androidx/media3/common/ColorInfo;

    move-result-object v0

    .line 41811
    .local v10, "colorInfo":Lcom/facebook/ads/androidx/media3/common/ColorInfo;
    iget v8, v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A02:I

    .line 41812
    .end local v23
    .local v13, "colorSpace":I
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local p8    # "mimeType":Ljava/lang/String;
    iget v5, v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01:I

    .line 41813
    .end local v24    # "colorRange":I
    .local v2, "colorRange":I
    iget v7, v0, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A03:I

    .line 41814
    .end local v25    # "colorTransfer":I
    .local v10, "colorTransfer":I
    goto/16 :goto_7

    .line 41815
    :cond_1b
    const/4 v2, 0x0

    goto :goto_e

    :cond_1c
    if-ne v2, v3, :cond_1d

    goto :goto_d

    .line 41816
    .end local v2    # "colorRange":I
    .end local v13    # "colorSpace":I
    .end local p8    # "mimeType":Ljava/lang/String;
    .local v10, "mimeType":Ljava/lang/String;
    .restart local v23    # "colorSpace":I
    .restart local v24    # "colorRange":I
    .restart local v25    # "colorTransfer":I
    :cond_1d
    const v0, 0x636c6c69

    if-ne v2, v0, :cond_20

    .line 41817
    if-nez v4, :cond_1e

    .line 41818
    invoke-static {}, Lcom/facebook/ads/redexgen/X/J0;->A0N()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 41819
    .end local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .local v2, "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_1e
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41820
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41821
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x57

    if-eq v1, v0, :cond_1f

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "cMBnz4dZXlFeWyM9hfqqzsh9zqwjLPKg"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "lv8fWd8FNFrcw1jaRvaQVznvgsfH83Rg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto/16 :goto_7

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "x7EuuBNN"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "05WogHTT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_7

    .line 41822
    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_20
    const v0, 0x6d646376

    if-ne v2, v0, :cond_22

    .line 41823
    if-nez v4, :cond_21

    .line 41824
    invoke-static {}, Lcom/facebook/ads/redexgen/X/J0;->A0N()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 41825
    .end local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .restart local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    :cond_21
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v24

    .line 41826
    .local v13, "displayPrimariesGX":S
    .end local v7    # "colorTransfer":I
    .local v27, "pixelWidthHeightRatioFromPasp":Z
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v23

    .line 41827
    .local v7, "displayPrimariesGY":S
    .end local v12
    .local v28, "atomType":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v22

    .line 41828
    .local v12, "displayPrimariesBX":S
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v21

    .line 41829
    .local v4, "displayPrimariesBY":S
    .end local v15
    .local v29, "projectionData":[B
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v20

    .line 41830
    .local v15, "displayPrimariesRX":S
    .end local v8
    .local v30, "pixelWidthHeightRatio":F
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v19

    .line 41831
    .local v8, "displayPrimariesRY":S
    .end local v6    # "colorRange":I
    .local v31, "height":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v18

    .line 41832
    .local v6, "whitePointX":S
    .end local v5    # "dolbyVisionConfig":Lcom/facebook/ads/redexgen/X/H6;
    .local v32, "width":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0b()S

    move-result v16

    .line 41833
    .local v5, "whitePointY":S
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v2

    .line 41834
    .local p0, "maxDisplayMasteringLuminance":J
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0Q()J

    move-result-wide v0

    .line 41835
    .local p2, "minDisplayMasteringLuminance":J
    const/4 v15, 0x1

    .end local v14    # "codecs":Ljava/lang/String;
    .local p4, "codecs":Ljava/lang/String;
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41836
    move/from16 v15, v20

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41837
    move/from16 v15, v19

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41838
    move/from16 v15, v24

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41839
    move/from16 v15, v23

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41840
    move/from16 v15, v22

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41841
    move/from16 v15, v21

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41842
    move/from16 v15, v18

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41843
    move/from16 v15, v16

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41844
    const-wide/16 v18, 0x2710

    .end local v4    # "displayPrimariesBY":S
    .end local v5    # "whitePointY":S
    .local p8, "displayPrimariesBY":S
    .local p13, "whitePointY":S
    div-long v2, v2, v18

    long-to-int v15, v2

    int-to-short v2, v15

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41845
    div-long v0, v0, v18

    long-to-int v2, v0

    int-to-short v0, v2

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 41846
    .end local v6    # "whitePointX":S
    .end local v7    # "displayPrimariesGY":S
    .end local v8    # "displayPrimariesRY":S
    .end local v12    # "displayPrimariesBX":S
    .end local v13    # "displayPrimariesGX":S
    .end local v15    # "displayPrimariesRX":S
    .end local p0    # "maxDisplayMasteringLuminance":J
    .end local p2    # "minDisplayMasteringLuminance":J
    .end local p8    # "displayPrimariesBY":S
    .end local p13
    goto/16 :goto_7

    .end local v2    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .end local v28    # "atomType":I
    .end local v29    # "projectionData":[B
    .end local v30    # "pixelWidthHeightRatio":F
    .end local v31    # "height":I
    .end local v32    # "width":I
    .end local p4    # "codecs":Ljava/lang/String;
    .local v5, "width":I
    .local v6, "height":I
    .local v7, "pixelWidthHeightRatioFromPasp":Z
    .local v8, "pixelWidthHeightRatio":F
    .local v12, "atomType":I
    .restart local v14    # "codecs":Ljava/lang/String;
    .local v15, "projectionData":[B
    .restart local v21    # "hdrStaticInfo":Ljava/nio/ByteBuffer;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "pixelWidthHeightRatioFromPasp":Z
    .end local v8    # "pixelWidthHeightRatio":F
    .end local v12    # "atomType":I
    .end local v14    # "codecs":Ljava/lang/String;
    .end local v15    # "projectionData":[B
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v28    # "atomType":I
    .restart local v29    # "projectionData":[B
    .restart local v30    # "pixelWidthHeightRatio":F
    .restart local v31    # "height":I
    .restart local v32    # "width":I
    .restart local p4    # "codecs":Ljava/lang/String;
    :cond_22
    const v0, 0x64323633

    if-ne v2, v0, :cond_24

    .line 41847
    if-nez v6, :cond_23

    const/4 v1, 0x1

    :goto_f
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41848
    const/16 v2, 0x4a2

    const/16 v1, 0xa

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .end local v10    # "mimeType":Ljava/lang/String;
    .local v2, "mimeType":Ljava/lang/String;
    goto/16 :goto_7

    .line 41849
    :cond_23
    const/4 v1, 0x0

    goto :goto_f

    .line 41850
    .end local v2    # "mimeType":Ljava/lang/String;
    .restart local v10    # "mimeType":Ljava/lang/String;
    :cond_24
    const v0, 0x65736473

    if-ne v2, v0, :cond_26

    .line 41851
    if-nez v6, :cond_25

    const/4 v2, 0x1

    :goto_10
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41852
    invoke-static {v10, v1}, Lcom/facebook/ads/redexgen/X/J0;->A0G(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/Iw;

    move-result-object v17

    .line 41853
    .end local v17    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .local v4, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A02(Lcom/facebook/ads/redexgen/X/Iw;)Ljava/lang/String;

    move-result-object v6

    .line 41854
    .end local v10    # "mimeType":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A03(Lcom/facebook/ads/redexgen/X/Iw;)[B

    move-result-object v0

    .line 41855
    .local v6, "initializationDataBytes":[B
    if-eqz v0, :cond_d

    .line 41856
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v12

    .end local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v13, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .line 41857
    :cond_25
    const/4 v2, 0x0

    goto :goto_10

    .line 41858
    .end local v4    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v13    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v10    # "mimeType":Ljava/lang/String;
    .restart local v17    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .restart local v20    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_26
    const v0, 0x70617370

    if-ne v2, v0, :cond_27

    .line 41859
    invoke-static {v10, v1}, Lcom/facebook/ads/redexgen/X/J0;->A00(Lcom/facebook/ads/redexgen/X/4v;I)F

    move-result v27

    .line 41860
    .end local v30    # "pixelWidthHeightRatio":F
    .local v4, "pixelWidthHeightRatio":F
    const/16 v30, 0x1

    .end local v27    # "pixelWidthHeightRatioFromPasp":Z
    .local v5, "pixelWidthHeightRatioFromPasp":Z
    goto/16 :goto_7

    .line 41861
    .end local v4    # "pixelWidthHeightRatio":F
    .end local v5    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v27    # "pixelWidthHeightRatioFromPasp":Z
    .restart local v30    # "pixelWidthHeightRatio":F
    :cond_27
    const v0, 0x73763364

    if-ne v2, v0, :cond_28

    .line 41862
    invoke-static {v10, v1, v14}, Lcom/facebook/ads/redexgen/X/J0;->A0W(Lcom/facebook/ads/redexgen/X/4v;II)[B

    move-result-object v26

    .end local v29    # "projectionData":[B
    .local v4, "projectionData":[B
    goto/16 :goto_7

    .line 41863
    .end local v4    # "projectionData":[B
    .restart local v29    # "projectionData":[B
    :cond_28
    const v0, 0x73743364

    if-ne v2, v0, :cond_2b

    .line 41864
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v1

    .line 41865
    .local v4, "version":I
    const/4 v0, 0x3

    invoke-virtual {v10, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41866
    if-nez v1, :cond_29

    .line 41867
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 41868
    .local v5, "layout":I
    packed-switch v0, :pswitch_data_0

    .line 41869
    .end local v4    # "version":I
    .end local v5    # "layout":I
    :cond_29
    :goto_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 41870
    :pswitch_0
    const/4 v11, 0x3

    .line 41871
    goto :goto_11

    .line 41872
    :pswitch_1
    const/4 v11, 0x2

    .line 41873
    goto :goto_11

    .line 41874
    :pswitch_2
    const/4 v11, 0x1

    .line 41875
    goto :goto_11

    .line 41876
    :pswitch_3
    const/4 v11, 0x0

    .line 41877
    goto :goto_11

    .line 41878
    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "0aivzU98O0ZXtjwpHxuX2T7FoukhoekU"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "nV94P8gaAxhOD3b386SRtcx64PXkWIfI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    goto/16 :goto_7

    .line 41879
    :cond_2b
    const v0, 0x636f6c72

    if-ne v2, v0, :cond_30

    .line 41880
    const/4 v0, -0x1

    .end local v23    # "colorSpace":I
    .local v4, "colorSpace":I
    if-ne v8, v0, :cond_30

    .end local v24    # "colorRange":I
    .local v6, "colorRange":I
    if-ne v5, v0, :cond_30

    .end local v25    # "colorTransfer":I
    .local v7, "colorTransfer":I
    if-ne v7, v0, :cond_30

    .line 41881
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v2

    .line 41882
    .local v5, "colorType":I
    const v0, 0x6e636c78

    if-eq v2, v0, :cond_2c

    const v0, 0x6e636c63

    if-ne v2, v0, :cond_2f

    .line 41883
    :cond_2c
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v2

    .line 41884
    .local v8, "colorPrimaries":I
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v1

    .line 41885
    .local v12, "transferCharacteristics":I
    const/4 v5, 0x2

    invoke-virtual {v10, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41886
    const/16 v0, 0x13

    if-ne v14, v0, :cond_2e

    .line 41887
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2e

    const/4 v0, 0x1

    .line 41888
    .local v15, "fullRangeFlag":Z
    :goto_12
    invoke-static {v2}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A00(I)I

    move-result v8

    .line 41889
    if-eqz v0, :cond_2d

    const/4 v5, 0x1

    .line 41890
    :cond_2d
    invoke-static {v1}, Lcom/facebook/ads/androidx/media3/common/ColorInfo;->A01(I)I

    move-result v7

    .line 41891
    .end local v8    # "colorPrimaries":I
    .end local v12    # "transferCharacteristics":I
    .end local v15    # "fullRangeFlag":Z
    goto/16 :goto_7

    .line 41892
    :cond_2e
    const/4 v0, 0x0

    goto :goto_12

    .line 41893
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x1d6

    const/16 v1, 0x18

    const/16 v0, 0x69

    invoke-static {v15, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Iu;->A02(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb2

    const/16 v1, 0xb

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 41894
    .end local v23
    .end local v24
    .end local v25
    .restart local v4    # "colorSpace":I
    .restart local v6    # "colorRange":I
    .restart local v7    # "colorTransfer":I
    :cond_30
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "ZXEhGysO"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "dMfXFnuv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_7

    :cond_31
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "PjY9iWjn"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "RXgmgrZF"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto/16 :goto_7

    .line 41895
    :cond_32
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 41896
    :cond_33
    const v1, 0x48323633

    move/from16 v0, v32

    if-ne v0, v1, :cond_2

    .line 41897
    const/16 v2, 0x4a2

    const/16 v1, 0xa

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 41898
    :cond_34
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JP;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/JP;->A02:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v25

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A0S(Lcom/facebook/ads/redexgen/X/4v;IIIILjava/lang/String;Lcom/facebook/ads/redexgen/X/Iy;)V
    .locals 7

    .line 41899
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41900
    const/4 v5, 0x0

    .line 41901
    .local v0, "initializationData":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<[B>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 41902
    .local v1, "subsampleOffsetUs":J
    const v2, 0x54544d4c

    if-ne p1, v2, :cond_0

    .line 41903
    const/16 v4, 0x2b3

    const/16 v3, 0x14

    const/16 v2, 0x67

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41904
    .local v3, "mimeType":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 41905
    invoke-virtual {v2, p4}, Lcom/facebook/ads/redexgen/X/2p;->A0g(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v2

    .line 41906
    invoke-virtual {v2, v6}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v2

    .line 41907
    invoke-virtual {v2, p5}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v2

    .line 41908
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A0s(J)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41909
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 41910
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p6, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 41911
    return-void

    .line 41912
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    const v2, 0x74783367

    if-ne p1, v2, :cond_1

    .line 41913
    const/16 v4, 0x310

    const/16 v3, 0x1c

    const/16 v2, 0x3a

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41914
    .restart local v3    # "mimeType":Ljava/lang/String;
    add-int/lit8 v2, p3, -0x8

    add-int/lit8 v4, v2, -0x8

    .line 41915
    .local v4, "sampleDescriptionLength":I
    new-array v3, v4, [B

    .line 41916
    .local v5, "sampleDescriptionData":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v3, v2, v4}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 41917
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v5

    .line 41918
    .end local v4    # "sampleDescriptionLength":I
    .end local v5    # "sampleDescriptionData":[B
    goto :goto_0

    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    const v2, 0x77767474

    if-ne p1, v2, :cond_2

    .line 41919
    const/16 v4, 0x2fb

    const/16 v3, 0x15

    const/16 v2, 0x58

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .restart local v3    # "mimeType":Ljava/lang/String;
    goto :goto_0

    .line 41920
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_2
    const v2, 0x73747070

    if-ne p1, v2, :cond_3

    .line 41921
    const/16 v2, 0x2b3

    const/16 v1, 0x14

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41922
    .restart local v3    # "mimeType":Ljava/lang/String;
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 41923
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_3
    const v2, 0x63363038

    if-ne p1, v2, :cond_4

    .line 41924
    const/16 v4, 0x2e2

    const/16 v3, 0x19

    const/16 v2, 0x49

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v6

    .line 41925
    .restart local v3    # "mimeType":Ljava/lang/String;
    const/4 v2, 0x1

    iput v2, p6, Lcom/facebook/ads/redexgen/X/Iy;->A01:I

    goto :goto_0

    .line 41926
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static A0T(Lcom/facebook/ads/redexgen/X/4v;IIIILjava/lang/String;ZLcom/facebook/ads/androidx/media3/common/DrmInitData;Lcom/facebook/ads/redexgen/X/Iy;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 41927
    move/from16 v3, p1

    move/from16 p1, p2

    move-object/from16 v2, p7

    add-int/lit8 v1, p1, 0x8

    const/16 v0, 0x8

    add-int/2addr v1, v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41928
    const/4 v6, 0x0

    .line 41929
    .local v7, "quickTimeSoundDescriptionVersion":I
    const/4 v7, 0x6

    if-eqz p6, :cond_37

    .line 41930
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v6

    .line 41931
    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41932
    :goto_0
    const/16 v18, 0x0

    .line 41933
    .local v8, "sampleRateMlp":I
    const/4 v10, -0x1

    .line 41934
    .local v10, "pcmEncoding":I
    const/16 p0, 0x0

    .line 41935
    .local v11, "codecs":Ljava/lang/String;
    const/16 v17, 0x0

    .line 41936
    .local v12, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    const/4 v8, 0x2

    const/16 v5, 0x10

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "6JAwliLs"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "MHNM5nZH"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/4 v0, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v0, :cond_36

    .line 41937
    :cond_2
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0M()I

    move-result v12

    .line 41938
    .restart local v13
    invoke-virtual {v11, v7}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41939
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0J()I

    move-result v9

    .line 41940
    .restart local v9
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v11, v1}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41941
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v18

    .line 41942
    if-ne v6, v0, :cond_3

    .line 41943
    const/16 v0, 0x10

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 41944
    :cond_3
    :goto_1
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A09()I

    move-result v8

    .line 41945
    .local v14, "childPosition":I
    const v0, 0x656e6361

    .end local v7    # "quickTimeSoundDescriptionVersion":I
    .local v18, "quickTimeSoundDescriptionVersion":I
    move-object/from16 v13, p8

    move/from16 p3, p3

    if-ne v3, v0, :cond_4

    .line 41946
    move/from16 v1, p1

    move/from16 v0, p3

    invoke-static {v11, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A08(Lcom/facebook/ads/redexgen/X/4v;II)Landroid/util/Pair;

    move-result-object v4

    .line 41947
    .local v15, "sampleEntryEncryptionData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/extractor/mp4/TrackEncryptionBox;>;"
    if-eqz v4, :cond_34

    .line 41948
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 41949
    .end local p8    # null:Lcom/facebook/ads/redexgen/X/Iy;
    .local v7, "atomType":I
    if-nez v2, :cond_33

    .line 41950
    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_32

    const/4 v2, 0x0

    .line 41951
    .end local p14
    .local v5, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_2
    iget-object v5, v13, Lcom/facebook/ads/redexgen/X/Iy;->A03:[Lcom/facebook/ads/redexgen/X/JP;

    .end local v5    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .restart local p14
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/facebook/ads/redexgen/X/JP;

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v6, v0

    const/4 v1, 0x6

    aget-object v6, v6, v1

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_31

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "lvh8KGFHktoLjastkJ82cPetj14Rk4EU"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    const-string v1, "lCZg4scnRLhDwR3AaCs1YjGUJehF9RDz"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    aput-object v4, v5, p9

    .line 41952
    .end local p8
    .end local p14
    .local v5, "atomType":I
    .local v7, "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :goto_3
    invoke-virtual {v11, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41953
    .end local p8
    .end local p14
    .restart local v5    # "atomType":I
    .restart local v7    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    :cond_4
    const/4 v7, 0x0

    .line 41954
    .local v15, "mimeType":Ljava/lang/String;
    .end local v9
    .local p2, "sampleRate":I
    const v0, 0x61632d33

    .end local v10    # "pcmEncoding":I
    .local p3, "pcmEncoding":I
    const v5, 0x616c6163

    if-ne v3, v0, :cond_17

    .line 41955
    const/16 v3, 0x336

    const/16 v1, 0x9

    const/16 v0, 0x3d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    .line 41956
    .end local p3    # "pcmEncoding":I
    .restart local v9
    :cond_5
    :goto_4
    const/4 v6, 0x0

    .line 41957
    .end local p2    # "sampleRate":I
    .local v11, "sampleRate":I
    .local v12, "codecs":Ljava/lang/String;
    .local v13, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .local v14, "channelCount":I
    .local v15, "childPosition":I
    .local p4, "mimeType":Ljava/lang/String;
    .local p5, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :goto_5
    sub-int v1, v8, p1

    move-object/from16 v14, p5

    move/from16 p2, p4

    move/from16 v0, p3

    if-ge v1, v0, :cond_39

    .line 41958
    invoke-virtual {v11, v8}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41959
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v5

    .line 41960
    .local v10, "childAtomSize":I
    if-lez v5, :cond_16

    const/4 v4, 0x1

    :goto_6
    const/16 v3, 0x442

    const/16 v1, 0x1e

    const/16 v0, 0x4f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v15

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v3, v0

    const/4 v1, 0x4

    aget-object v3, v3, v1

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "1WqyRoRGMALZfYpxNfh8k5AQ"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    invoke-static {v4, v15}, Lcom/facebook/ads/redexgen/X/HB;->A01(ZLjava/lang/String;)V

    .line 41961
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v0

    .line 41962
    .local v1, "childAtomType":I
    const v1, 0x6d686143

    if-ne v0, v1, :cond_7

    .line 41963
    const/16 v0, 0xd

    .line 41964
    .local v2, "mhacHeaderSize":I
    .end local v5    # "atomType":I
    .local p2, "atomType":I
    sub-int v3, v5, v0

    .line 41965
    .local v5, "childAtomBodySize":I
    .end local v13    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .local p3, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    new-array v1, v3, [B

    .line 41966
    .local v13, "initializationDataBytes":[B
    .end local v9
    .local p6, "pcmEncoding":I
    add-int/2addr v0, v8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41967
    const/4 v0, 0x0

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 41968
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v6

    .line 41969
    .end local v5    # "childAtomBodySize":I
    .end local v13    # "initializationDataBytes":[B
    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_6
    :goto_7
    add-int/2addr v8, v5

    .line 41970
    .end local v1    # "childAtomType":I
    .end local v10    # "childAtomSize":I
    goto :goto_5

    .line 41971
    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local p2    # "atomType":I
    .end local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .end local p6    # "pcmEncoding":I
    .local v5, "atomType":I
    .restart local v9
    .local v13, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .restart local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v5    # "atomType":I
    .end local v9
    .end local v13    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .restart local p2    # "atomType":I
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .restart local p6    # "pcmEncoding":I
    :cond_7
    const v4, 0x65736473

    if-eq v0, v4, :cond_8

    if-eqz p6, :cond_c

    const v3, 0x77617665

    sget-object v15, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v15, v15, v1

    const/16 v1, 0x17

    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v1, 0x57

    if-eq v15, v1, :cond_b

    if-ne v0, v3, :cond_c

    .line 41972
    .end local p4    # "mimeType":Ljava/lang/String;
    .restart local v5    # "atomType":I
    :cond_8
    :goto_8
    if-ne v0, v4, :cond_a

    .line 41973
    move v1, v8

    .line 41974
    .local v2, "esdsAtomPosition":I
    :goto_9
    const/4 v0, -0x1

    if-eq v1, v0, :cond_6

    .line 41975
    invoke-static {v11, v1}, Lcom/facebook/ads/redexgen/X/J0;->A0G(Lcom/facebook/ads/redexgen/X/4v;I)Lcom/facebook/ads/redexgen/X/Iw;

    move-result-object v17

    .line 41976
    .end local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .local v13, "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A02(Lcom/facebook/ads/redexgen/X/Iw;)Ljava/lang/String;

    move-result-object v7

    .line 41977
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A03(Lcom/facebook/ads/redexgen/X/Iw;)[B

    move-result-object v4

    .line 41978
    .local v9, "initializationDataBytes":[B
    if-eqz v4, :cond_6

    .line 41979
    const/16 v3, 0x3a4

    const/16 v1, 0xf

    const/16 v0, 0x67

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41980
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Gn;->A03([B)Lcom/facebook/ads/redexgen/X/Gm;

    move-result-object v0

    .line 41981
    .local v0, "aacConfig":Lcom/facebook/ads/redexgen/X/Gm;
    iget v9, v0, Lcom/facebook/ads/redexgen/X/Gm;->A01:I

    .line 41982
    iget v12, v0, Lcom/facebook/ads/redexgen/X/Gm;->A00:I

    .line 41983
    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Gm;->A02:Ljava/lang/String;

    move-object/from16 p0, v0

    .line 41984
    .end local v0    # "aacConfig":Lcom/facebook/ads/redexgen/X/Gm;
    :cond_9
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v6

    goto :goto_7

    .line 41985
    :cond_a
    invoke-static {v11, v4, v8, v5}, Lcom/facebook/ads/redexgen/X/J0;->A04(Lcom/facebook/ads/redexgen/X/4v;III)I

    move-result v1

    goto :goto_9

    :cond_b
    sget-object v16, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v15, "uRIbW45A"

    const/4 v1, 0x0

    aput-object v15, v16, v1

    const-string v15, "EDIb1o31"

    const/4 v1, 0x3

    aput-object v15, v16, v1

    if-ne v0, v3, :cond_c

    goto :goto_8

    .line 41986
    :cond_c
    const v1, 0x64616333

    if-ne v0, v1, :cond_d

    .line 41987
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41988
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v14, v2}, Lcom/facebook/ads/redexgen/X/Gr;->A07(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    goto :goto_7

    .line 41989
    :cond_d
    const v1, 0x64656333

    if-ne v0, v1, :cond_e

    .line 41990
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41991
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v14, v2}, Lcom/facebook/ads/redexgen/X/Gr;->A08(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    goto/16 :goto_7

    .line 41992
    :cond_e
    const v1, 0x64616334

    if-ne v0, v1, :cond_f

    .line 41993
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 41994
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0, v14, v2}, Lcom/facebook/ads/redexgen/X/Gu;->A03(Lcom/facebook/ads/redexgen/X/4v;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    goto/16 :goto_7

    .line 41995
    :cond_f
    const v4, 0x646d6c70

    sget-object v15, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v1, v15, v1

    const/4 v3, 0x4

    aget-object v15, v15, v3

    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_10

    sget-object v15, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v3, "XWUeG0Lj6KL9JW7Z7jfQ0rtemNqiryGw"

    const/4 v1, 0x7

    aput-object v3, v15, v1

    const-string v3, "DGFAmtAGFYrNnmS6p9Hy3BCjcLzUjlt2"

    const/4 v1, 0x4

    aput-object v3, v15, v1

    if-ne v0, v4, :cond_11

    .line 41996
    :goto_a
    if-lez v18, :cond_38

    .line 41997
    .end local v11    # "sampleRate":I
    .local v2, "sampleRate":I
    const/4 v12, 0x2

    move/from16 v9, v18

    .end local v14    # "channelCount":I
    .local v5, "channelCount":I
    goto/16 :goto_7

    :cond_10
    if-ne v0, v4, :cond_11

    goto :goto_a

    .line 41998
    :cond_11
    const v1, 0x64647473

    if-eq v0, v1, :cond_12

    const v1, 0x75647473

    if-ne v0, v1, :cond_13

    .line 41999
    :cond_12
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 42000
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0g(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42001
    .end local p4
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42002
    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42003
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42004
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42005
    invoke-virtual {v0, v14}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42006
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    goto/16 :goto_7

    .line 42007
    :cond_13
    const v1, 0x644f7073

    if-ne v0, v1, :cond_14

    .line 42008
    add-int/lit8 v3, v5, -0x8

    .line 42009
    .local v2, "childAtomBodySize":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A02:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/J0;->A02:[B

    array-length v0, v0

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 42010
    .local v9, "headerBytes":[B
    add-int/lit8 v0, v8, 0x8

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42011
    sget-object v0, Lcom/facebook/ads/redexgen/X/J0;->A02:[B

    array-length v0, v0

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 42012
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HT;->A06([B)Ljava/util/List;

    move-result-object v6

    .line 42013
    .end local v9    # "headerBytes":[B
    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_14
    const v1, 0x64664c61

    if-ne v0, v1, :cond_15

    .line 42014
    add-int/lit8 v3, v5, -0xc

    .line 42015
    .local v2, "childAtomBodySize":I
    add-int/lit8 v0, v3, 0x4

    new-array v1, v0, [B

    .line 42016
    .local v9, "initializationDataBytes":[B
    const/16 v4, 0x66

    const/4 v0, 0x0

    aput-byte v4, v1, v0

    .line 42017
    const/16 v4, 0x4c

    const/4 v0, 0x1

    aput-byte v4, v1, v0

    .line 42018
    const/16 v4, 0x61

    const/4 v0, 0x2

    aput-byte v4, v1, v0

    .line 42019
    const/4 v4, 0x3

    const/16 v0, 0x43

    aput-byte v0, v1, v4

    .line 42020
    add-int/lit8 v0, v8, 0xc

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42021
    const/4 v0, 0x4

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 42022
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v6

    .line 42023
    .end local v9    # "initializationDataBytes":[B
    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v2, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .end local v2    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_15
    const v1, 0x616c6163

    if-ne v0, v1, :cond_6

    .line 42024
    add-int/lit8 v3, v5, -0xc

    .line 42025
    .local v2, "childAtomBodySize":I
    new-array v1, v3, [B

    .line 42026
    .local v5, "initializationDataBytes":[B
    add-int/lit8 v0, v8, 0xc

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42027
    const/4 v0, 0x0

    invoke-virtual {v11, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0k([BII)V

    .line 42028
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/46;->A00([B)Landroid/util/Pair;

    move-result-object v3

    .line 42029
    .local v9, "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 42030
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 42031
    .end local v14
    .local v13, "channelCount":I
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v6

    .end local p5    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local v14, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    goto/16 :goto_7

    .line 42032
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 42033
    :cond_17
    const v0, 0x65632d33

    if-ne v3, v0, :cond_18

    .line 42034
    const/16 v3, 0x35e

    const/16 v1, 0xa

    const/16 v0, 0x4a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42035
    :cond_18
    const v0, 0x61632d34

    if-ne v3, v0, :cond_1a

    .line 42036
    const/16 v3, 0x33f

    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v4, v0

    const/4 v0, 0x4

    aget-object v4, v4, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_19

    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "ajRR6yPd"

    const/4 v0, 0x0

    aput-object v1, v4, v0

    const-string v1, "wapOpR6f"

    const/4 v0, 0x3

    aput-object v1, v4, v0

    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_19
    const/16 v1, 0x9

    const/16 v0, 0x2d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42037
    :cond_1a
    const v0, 0x64747363

    if-ne v3, v0, :cond_1b

    .line 42038
    const/16 v4, 0x3dd

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v3, v0

    const/4 v0, 0x6

    aget-object v3, v3, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "KJpCB4t3K52AuUO24XLWBqo9"

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/16 v1, 0xd

    const/16 v0, 0x75

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42039
    :cond_1b
    const v4, 0x64747368

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v6, v0

    const/4 v0, 0x4

    aget-object v6, v6, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1d

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "E8vPAuGqR2xNMC3W8Z6piDguEQA0iYD6"

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const-string v1, "JqGyLM9U6ZTAdL5rS6oZcwJBCNvZXK39"

    const/4 v0, 0x6

    aput-object v1, v6, v0

    if-eq v3, v4, :cond_1c

    :goto_b
    const v0, 0x6474736c

    if-ne v3, v0, :cond_1e

    .line 42040
    .end local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    :cond_1c
    const/16 v3, 0x3ea

    const/16 v1, 0x10

    const/16 v0, 0x27

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_1d
    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "jXw0aAnX"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const-string v1, "tHH1zIUY"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    if-eq v3, v4, :cond_1c

    goto :goto_b

    .line 42041
    :cond_1e
    const v0, 0x64747365

    if-ne v3, v0, :cond_1f

    .line 42042
    const/16 v3, 0x3fa

    const/16 v1, 0x1c

    const/16 v0, 0x43

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42043
    :cond_1f
    const v0, 0x64747378

    if-ne v3, v0, :cond_20

    .line 42044
    const/16 v3, 0x416

    const/16 v1, 0x1c

    const/16 v0, 0x5f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42045
    :cond_20
    const v4, 0x73616d72

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "UBbPjz2J"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const-string v1, "vZen3GMl"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    if-ne v3, v4, :cond_22

    .line 42046
    :goto_c
    const/16 v3, 0x32c

    const/16 v1, 0xa

    const/16 v0, 0x57

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_21
    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "gBDk9Jrqoo24V0L1mHSTaoLt"

    const/4 v0, 0x2

    aput-object v1, v6, v0

    if-ne v3, v4, :cond_22

    goto :goto_c

    .line 42047
    :cond_22
    const v0, 0x73617762

    if-ne v3, v0, :cond_23

    .line 42048
    const/16 v3, 0x352

    const/16 v1, 0xc

    const/16 v0, 0x25

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42049
    :cond_23
    const v0, 0x6c70636d

    if-eq v3, v0, :cond_24

    const v0, 0x736f7774

    if-ne v3, v0, :cond_25

    .line 42050
    :cond_24
    const/16 v3, 0x3c7

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    .line 42051
    const/4 v10, 0x2

    .end local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .restart local v9    # "audioSpecificConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_4

    .line 42052
    :cond_25
    const v0, 0x74776f73

    if-ne v3, v0, :cond_26

    .line 42053
    const/16 v3, 0x3c7

    const/16 v1, 0x9

    const/16 v0, 0x5e

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    .line 42054
    const/high16 v10, 0x10000000

    .end local p3
    .local v9, "pcmEncoding":I
    goto/16 :goto_4

    .line 42055
    .end local v9    # "pcmEncoding":I
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    :cond_26
    const v0, 0x2e6d7032

    if-eq v3, v0, :cond_27

    const v0, 0x2e6d7033

    if-ne v3, v0, :cond_28

    .line 42056
    :cond_27
    const/16 v3, 0x3b3

    const/16 v1, 0xa

    const/16 v0, 0x11

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42057
    :cond_28
    const v0, 0x6d686131

    if-ne v3, v0, :cond_29

    .line 42058
    const/16 v3, 0x390

    const/16 v1, 0xa

    const/16 v0, 0x25

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42059
    :cond_29
    const v0, 0x6d686d31

    if-ne v3, v0, :cond_2a

    .line 42060
    const/16 v3, 0x39a

    const/16 v1, 0xa

    const/16 v0, 0x10

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42061
    :cond_2a
    if-ne v3, v5, :cond_2c

    .line 42062
    const/16 v4, 0x348

    sget-object v1, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_2b

    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "Tx0aPYhLQcdbhycZDJ63DJlxAHLYnZiL"

    const/4 v0, 0x7

    aput-object v1, v3, v0

    const-string v1, "3h5vNAL3r5q44mC2VqL1y1SAaDe1rbn7"

    const/4 v0, 0x4

    aput-object v1, v3, v0

    const/4 v1, 0x1

    const/16 v0, 0x1f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_2b
    sget-object v3, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "qx3Rs2jX7JB6Nuy9TisbRByWp1zn9Qj8"

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/16 v1, 0xa

    const/16 v0, 0x29

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42063
    :cond_2c
    const v0, 0x616c6177

    if-ne v3, v0, :cond_2d

    .line 42064
    const/16 v3, 0x372

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42065
    :cond_2d
    const v0, 0x756c6177

    if-ne v3, v0, :cond_2e

    .line 42066
    const/16 v3, 0x381

    const/16 v1, 0xf

    const/16 v0, 0x4d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42067
    :cond_2e
    const v0, 0x4f707573

    if-ne v3, v0, :cond_2f

    .line 42068
    const/16 v3, 0x3bd

    const/16 v1, 0xa

    const/16 v0, 0x43

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42069
    :cond_2f
    const v0, 0x664c6143

    if-ne v3, v0, :cond_30

    .line 42070
    const/16 v3, 0x368

    const/16 v1, 0xa

    const/4 v0, 0x4

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 42071
    :cond_30
    const v0, 0x6d6c7061

    if-ne v3, v0, :cond_5

    .line 42072
    const/16 v3, 0x3d0

    const/16 v1, 0xd

    const/16 v0, 0x4d

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    :cond_31
    sget-object v6, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "dju2geGd"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    const-string v1, "bzT2ebja"

    const/4 v0, 0x3

    aput-object v1, v6, v0

    aput-object v4, v5, p9

    goto/16 :goto_3

    :cond_32
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "GRTMmxkT"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "8R10f2wp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 42073
    .end local v7    # "drmInitData":Lcom/facebook/ads/androidx/media3/common/DrmInitData;
    .restart local p8    # null:Lcom/facebook/ads/redexgen/X/Iy;
    :cond_33
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/JP;->A02:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/androidx/media3/common/DrmInitData;->A01(Ljava/lang/String;)Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    move-result-object v2

    goto/16 :goto_2

    .line 42074
    :cond_34
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v4, v0

    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_35

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_35
    sget-object v4, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "gPFMLbY3dC1lU3feUmGywMAQlXFn4oyw"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "p7gqQJ524nkvgJLmUWGAgmNX9hqHunnJ"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    goto/16 :goto_3

    .line 42075
    :cond_36
    if-ne v6, v8, :cond_3c

    .line 42076
    invoke-virtual {v11, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 42077
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A06()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v9, v0

    .line 42078
    .local v9, "sampleRate":I
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v12

    .line 42079
    .local v13, "channelCount":I
    const/16 v0, 0x14

    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    goto/16 :goto_1

    .line 42080
    :cond_37
    invoke-virtual {v11, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    goto/16 :goto_0

    .line 42081
    .end local v2    # "childAtomBodySize":I
    .end local v5    # "initializationDataBytes":[B
    .restart local v11    # "sampleRate":I
    .restart local v14    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xef

    const/16 v1, 0x31

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->A0M(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3K;->A01(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/3K;

    move-result-object v0

    throw v0

    .line 42082
    .end local p2    # "atomType":I
    .end local p6    # "pcmEncoding":I
    .local v5, "atomType":I
    .local v9, "pcmEncoding":I
    .end local v9    # "pcmEncoding":I
    .end local v13    # "channelCount":I
    .end local p4
    .local v5, "mimeType":Ljava/lang/String;
    .restart local p2    # "atomType":I
    .restart local p3    # "esdsData":Lcom/facebook/ads/redexgen/X/Iw;
    .restart local p6    # "pcmEncoding":I
    :cond_39
    iget-object v0, v13, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    if-nez v0, :cond_3b

    if-eqz v7, :cond_3b

    .line 42083
    new-instance v1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    .line 42084
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0g(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42085
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v1

    .line 42086
    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0w(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42087
    invoke-virtual {v0, v12}, Lcom/facebook/ads/redexgen/X/2p;->A0b(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42088
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/2p;->A0m(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42089
    .end local p6    # "pcmEncoding":I
    .restart local v9    # "pcmEncoding":I
    invoke-virtual {v0, v10}, Lcom/facebook/ads/redexgen/X/2p;->A0i(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42090
    .end local p5
    .local v1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/2p;->A12(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42091
    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/2p;->A0u(Lcom/facebook/ads/androidx/media3/common/DrmInitData;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    .line 42092
    invoke-virtual {v0, v14}, Lcom/facebook/ads/redexgen/X/2p;->A10(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v3

    .line 42093
    .local v0, "formatBuilder":Lcom/facebook/ads/redexgen/X/2p;
    if-eqz v17, :cond_3a

    .line 42094
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A01(Lcom/facebook/ads/redexgen/X/Iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A03(J)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0a(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v2

    .line 42095
    invoke-static/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Iw;->A00(Lcom/facebook/ads/redexgen/X/Iw;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/As;->A03(J)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0j(I)Lcom/facebook/ads/redexgen/X/2p;

    .line 42096
    :cond_3a
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, v13, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 42097
    .end local p5
    .end local p6
    .restart local v1    # "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v9    # "pcmEncoding":I
    :cond_3b
    return-void

    .line 42098
    .end local v9    # "pcmEncoding":I
    .end local v13
    :cond_3c
    return-void
.end method

.method public static A0U(Lcom/facebook/ads/redexgen/X/4v;IIILcom/facebook/ads/redexgen/X/Iy;)V
    .locals 1

    .line 42099
    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42100
    const v0, 0x6d657474

    if-ne p1, v0, :cond_0

    .line 42101
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0U()Ljava/lang/String;

    .line 42102
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0U()Ljava/lang/String;

    move-result-object p0

    .line 42103
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 42104
    new-instance v0, Lcom/facebook/ads/redexgen/X/2p;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2p;-><init>()V

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/2p;->A0g(I)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/2p;->A11(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2p;->A14()Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iput-object v0, p4, Lcom/facebook/ads/redexgen/X/Iy;->A02:Lcom/facebook/ads/redexgen/X/qI;

    .line 42105
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static A0V([JJJJ)Z
    .locals 6

    .line 42106
    array-length v4, p0

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 42107
    .local v0, "lastIndex":I
    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-static {v2, v1, v4}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v3

    .line 42108
    .local v4, "latestDelayIndex":I
    array-length v0, p0

    sub-int/2addr v0, v2

    .line 42109
    invoke-static {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/5C;->A07(III)I

    move-result v4

    .line 42110
    .local v2, "earliestPaddingIndex":I
    aget-wide v1, p0, v1

    cmp-long v0, v1, p3

    if-gtz v0, :cond_0

    aget-wide v0, p0, v3

    cmp-long v3, p3, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "4d2838LB6zuHL2SDSRFgaAe0bfX5eWcN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "2DmC9sheXkti4jYQDflGydtNBiOhlXlc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-gez v3, :cond_0

    aget-wide v1, p0, v4

    cmp-long v0, v1, p5

    if-gez v0, :cond_0

    cmp-long v0, p5, p1

    if-gtz v0, :cond_0

    :goto_0
    return v5
.end method

.method public static A0W(Lcom/facebook/ads/redexgen/X/4v;II)[B
    .locals 6

    .line 42111
    add-int/lit8 v3, p1, 0x8

    .line 42112
    .local v0, "childPosition":I
    :goto_0
    sub-int v0, v3, p1

    if-ge v0, p2, :cond_2

    .line 42113
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 42114
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v5

    .line 42115
    .local v1, "childAtomSize":I
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0C()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1e

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 42116
    .local v2, "childAtomType":I
    sget-object v2, Lcom/facebook/ads/redexgen/X/J0;->A01:[Ljava/lang/String;

    const-string v1, "QfAHDCYR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "If6V2JqI"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const v0, 0x70726f6a

    if-ne v4, v0, :cond_0

    .line 42117
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/4v;->A0l()[B

    move-result-object v1

    add-int v0, v3, v5

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    .line 42118
    :cond_0
    add-int/2addr v3, v5

    .line 42119
    .end local v1    # "childAtomSize":I
    .end local v2    # "childAtomType":I
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42120
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
