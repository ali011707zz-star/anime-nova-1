.class public final Lcom/facebook/ads/redexgen/X/4z;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A02:[B

.field public static final A03:Lcom/facebook/ads/redexgen/X/4z;

.field public static final A04:Lcom/facebook/ads/redexgen/X/4z;


# instance fields
.field public final A00:I

.field public final A01:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/facebook/ads/redexgen/X/4z;->A01()V

    const/4 v1, -0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4z;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4z;->A03:Lcom/facebook/ads/redexgen/X/4z;

    .line 355
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/4z;

    invoke-direct {v0, v1, v1}, Lcom/facebook/ads/redexgen/X/4z;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/4z;->A04:Lcom/facebook/ads/redexgen/X/4z;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 13006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13007
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-ltz p1, :cond_2

    :cond_0
    if-eq p2, v0, :cond_1

    if-ltz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 13008
    iput p1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    .line 13009
    iput p2, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    .line 13010
    return-void

    .line 13011
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/4z;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/4z;->A02:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1ct
    .end array-data
.end method


# virtual methods
.method public final A02()I
    .locals 1

    .line 13012
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    return v0
.end method

.method public final A03()I
    .locals 1

    .line 13013
    iget v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 13014
    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 13015
    return v2

    .line 13016
    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    .line 13017
    return v0

    .line 13018
    :cond_1
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/4z;

    if-eqz v0, :cond_3

    .line 13019
    check-cast p1, Lcom/facebook/ads/redexgen/X/4z;

    .line 13020
    .local v2, "other":Lcom/facebook/ads/redexgen/X/4z;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    if-ne v1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 13021
    .end local v2    # "other":Lcom/facebook/ads/redexgen/X/4z;
    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 13022
    iget v2, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    shl-int/lit8 v1, v0, 0x10

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    ushr-int/lit8 v0, v0, 0x10

    or-int/2addr v1, v0

    xor-int/2addr v2, v1

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 13023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A01:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4z;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/4z;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
