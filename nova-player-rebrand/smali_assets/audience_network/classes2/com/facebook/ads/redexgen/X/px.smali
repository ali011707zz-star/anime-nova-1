.class public final Lcom/facebook/ads/redexgen/X/px;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/24;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;

.field public static final A05:Lcom/facebook/ads/redexgen/X/23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/23<",
            "Lcom/facebook/ads/redexgen/X/px;",
            ">;"
        }
    .end annotation
.end field

.field public static final A06:Lcom/facebook/ads/redexgen/X/px;

.field public static final A07:Ljava/lang/String;

.field public static final A08:Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3459
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "UnBMZo2POSkJfz8F5ORuhqz31kXq7ERt"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GIL9xJe6rQGrNyWVB8WflXUexCYVOXiL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1YJSMghIf03NGeOR9kmJ9bGOSAOIDk9h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FbkWhL7EvytxWPK79enAjrYaTxkw07sQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DvmeNztcauqB3GuZI4NFBZAXEAF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3h1K0W52WnqAecgG5ddVr1SgL8ZiRxH3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SzBXc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "YkLyJW6tcdkoyMoq5nPmYT201JvYdNzP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/px;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/px;->A02()V

    const/high16 v1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/facebook/ads/redexgen/X/px;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/px;-><init>(F)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/px;->A06:Lcom/facebook/ads/redexgen/X/px;

    .line 3460
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/px;->A08:Ljava/lang/String;

    .line 3461
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0h(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/px;->A07:Ljava/lang/String;

    .line 3462
    new-instance v0, Lcom/facebook/ads/redexgen/X/py;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/py;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/px;->A05:Lcom/facebook/ads/redexgen/X/23;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 104950
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/px;-><init>(FF)V

    .line 104951
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3

    .line 104952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104953
    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 104954
    cmpl-float v0, p2, v1

    if-lez v0, :cond_0

    :goto_1
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 104955
    iput p1, p0, Lcom/facebook/ads/redexgen/X/px;->A01:F

    .line 104956
    iput p2, p0, Lcom/facebook/ads/redexgen/X/px;->A00:F

    .line 104957
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/px;->A02:I

    .line 104958
    return-void

    .line 104959
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 104960
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A00(Landroid/os/Bundle;)Lcom/facebook/ads/redexgen/X/px;
    .locals 3

    .line 104961
    sget-object v0, Lcom/facebook/ads/redexgen/X/px;->A08:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 104962
    .local v0, "speed":F
    sget-object v0, Lcom/facebook/ads/redexgen/X/px;->A07:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 104963
    .local v1, "pitch":F
    new-instance v0, Lcom/facebook/ads/redexgen/X/px;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/px;-><init>(FF)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/px;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/px;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x51t
        0x5ct
        0x44t
        0x5ft
        0x5ct
        0x5et
        0x56t
        0x6dt
        0x5ct
        0x4ft
        0x5ct
        0x50t
        0x58t
        0x49t
        0x58t
        0x4ft
        0x4et
        0x15t
        0x4et
        0x4dt
        0x58t
        0x58t
        0x59t
        0x0t
        0x18t
        0x13t
        0xft
        0x5bt
        0x11t
        0x1dt
        0x4dt
        0x54t
        0x49t
        0x5et
        0x55t
        0x0t
        0x18t
        0x13t
        0xft
        0x5bt
        0x14t
    .end array-data
.end method


# virtual methods
.method public final A03(J)J
    .locals 2

    .line 104964
    iget v0, p0, Lcom/facebook/ads/redexgen/X/px;->A02:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 104965
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 104966
    return v5

    .line 104967
    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v1, v0, :cond_2

    .line 104968
    .end local v2
    :cond_1
    return v2

    .line 104969
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/px;

    .line 104970
    .local v2, "other":Lcom/facebook/ads/redexgen/X/px;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/px;->A01:F

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A01:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_3

    iget v4, p0, Lcom/facebook/ads/redexgen/X/px;->A00:F

    iget v3, p1, Lcom/facebook/ads/redexgen/X/px;->A00:F

    sget-object v1, Lcom/facebook/ads/redexgen/X/px;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x55

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/px;->A04:[Ljava/lang/String;

    const-string v1, "pC9U2"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "3ca7HvojzYBlvf3WwnTfkyYQmWq"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    cmpl-float v0, v4, v3

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 104971
    const/16 v0, 0x11

    .line 104972
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/px;->A01:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 104973
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/px;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 104974
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 104975
    iget v0, p0, Lcom/facebook/ads/redexgen/X/px;->A01:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/px;->A00:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x2a

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/px;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/5C;->A0n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
