.class public final Lcom/facebook/ads/redexgen/X/JE;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mp4Track"
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Hd;

.field public final A02:Lcom/facebook/ads/redexgen/X/He;

.field public final A03:Lcom/facebook/ads/redexgen/X/JO;

.field public final A04:Lcom/facebook/ads/redexgen/X/JR;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 822
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OUufb3XpwzKYnlflZdZ6sRl07O4y2xde"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sKTdS4Xom3soESmXE0UV17qKIdPOParu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kk23Dr8l3bATGrEguhsdZQtf"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3jRjB5CH7VItg40f0wyJnaKmLrgr1NBM"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BH8vD2JIXWvofCU6hHaybnU4mVSHqFOc"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vohsQcTTzwLv029o6bcJNqcBVW1DxWoo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Jn5KmPxuP80vuetXL26eN8MkgXOAz5Tn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UdULkD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JE;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/JE;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JO;Lcom/facebook/ads/redexgen/X/JR;Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 4

    .line 42679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JE;->A03:Lcom/facebook/ads/redexgen/X/JO;

    .line 42681
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JR;

    .line 42682
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/JE;->A01:Lcom/facebook/ads/redexgen/X/Hd;

    .line 42683
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/JO;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JE;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42684
    new-instance v0, Lcom/facebook/ads/redexgen/X/He;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/He;-><init>()V

    .line 42685
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JE;->A02:Lcom/facebook/ads/redexgen/X/He;

    .line 42686
    return-void

    .line 42687
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/JE;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/JE;->A06:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/JE;->A06:[Ljava/lang/String;

    const-string v1, "SmGAr1wQXpWbqjnIPPUcEk3V"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "BndLoX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x14t
        0x0t
        -0x11t
        -0xct
        -0x6t
        -0x46t
        -0x1t
        -0x3t
        0x0t
        -0x10t
        -0x48t
        -0xdt
        -0x11t
    .end array-data
.end method
