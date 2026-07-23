.class public final Lcom/facebook/ads/redexgen/X/50;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:Landroid/view/Surface;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 356
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "rYnPbEfuSaTBbvatyKmqENn8mgRSZdek"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ofstc3luVQLhDPNdocOCjRxToKRzk7nB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Fnbmz9sIEw5y7N9QBLdBg"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MRjsdls7eSgWLCoo8pA3j"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "UfW8AgM42njlyNRr2q7EB3IdvayipkgN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kcxrVmXx561a0K31f6UYVe0sWhenvrT2"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "AcILJL5UwW37jf1DZrUjVyU1aBx980VR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/50;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/50;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 1

    .line 13024
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/50;-><init>(Landroid/view/Surface;III)V

    .line 13025
    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;III)V
    .locals 4

    .line 13026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13027
    if-eqz p4, :cond_0

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p4, v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const/4 v2, 0x0

    const/16 v1, 0x2d

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/50;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3y;->A09(ZLjava/lang/Object;)V

    .line 13028
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/50;->A03:Landroid/view/Surface;

    .line 13029
    iput p2, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    .line 13030
    iput p3, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    .line 13031
    iput p4, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    .line 13032
    return-void

    .line 13033
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

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

    const/16 v0, 0x2d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/50;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x42t
        0x5ft
        0x44t
        0x48t
        0x43t
        0x59t
        0x4ct
        0x59t
        0x44t
        0x42t
        0x43t
        0x69t
        0x48t
        0x4at
        0x5ft
        0x48t
        0x48t
        0x5et
        0xdt
        0x40t
        0x58t
        0x5et
        0x59t
        0xdt
        0x4ft
        0x48t
        0xdt
        0x1dt
        0x1t
        0xdt
        0x14t
        0x1dt
        0x1t
        0xdt
        0x1ct
        0x15t
        0x1dt
        0x1t
        0xdt
        0x42t
        0x5ft
        0xdt
        0x1ft
        0x1at
        0x1dt
    .end array-data
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 13034
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 13035
    return v5

    .line 13036
    :cond_0
    instance-of v1, p1, Lcom/facebook/ads/redexgen/X/50;

    const/4 v0, 0x0

    if-nez v1, :cond_1

    .line 13037
    return v0

    .line 13038
    :cond_1
    check-cast p1, Lcom/facebook/ads/redexgen/X/50;

    .line 13039
    .local v1, "that":Lcom/facebook/ads/redexgen/X/50;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/50;->A02:I

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/50;->A00:I

    if-ne v1, v0, :cond_2

    iget v4, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    iget v3, p1, Lcom/facebook/ads/redexgen/X/50;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/50;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x71

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/50;->A05:[Ljava/lang/String;

    const-string v1, "IfmXZsmHB8xObc4DA1o6c"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "9bmF1UX1T4riDJeOAx7tH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ne v4, v3, :cond_2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/50;->A03:Landroid/view/Surface;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/50;->A03:Landroid/view/Surface;

    .line 13040
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13041
    :goto_0
    return v5

    .line 13042
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final hashCode()I
    .locals 2

    .line 13043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/50;->A03:Landroid/view/Surface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 13044
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A02:I

    add-int/2addr v1, v0

    .line 13045
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A00:I

    add-int/2addr v1, v0

    .line 13046
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/facebook/ads/redexgen/X/50;->A01:I

    add-int/2addr v1, v0

    .line 13047
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
