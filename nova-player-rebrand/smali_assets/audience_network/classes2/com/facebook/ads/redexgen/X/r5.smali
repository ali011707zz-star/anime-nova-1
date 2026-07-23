.class public final Lcom/facebook/ads/redexgen/X/r5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Aj;
    }
.end annotation


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/r5;

.field public static A04:Lcom/facebook/ads/redexgen/X/rX;

.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Am;

.field public final A01:Lcom/facebook/ads/redexgen/X/rH;

.field public final A02:Lcom/facebook/ads/redexgen/X/rF;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3585
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5DKKU3xZINN65fryyoBt5QQPLIMTkohn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "LFzimA69beWaSFXyztzupLxdNfHOQ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XSuolM5aqTyza3oApgyv2R2QmsMDCJc3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "zWK24MgLV"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qJClZMWv8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "0fmkfxUqb1vnRdlz6H0UDHtVT1WIbpOa"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oRXxD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/r5;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/r5;->A03()V

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/r5;->A03:Lcom/facebook/ads/redexgen/X/r5;

    .line 3586
    sput-object v0, Lcom/facebook/ads/redexgen/X/r5;->A04:Lcom/facebook/ads/redexgen/X/rX;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rL;Lcom/facebook/ads/redexgen/X/rF;Lcom/facebook/ads/redexgen/X/rH;)V
    .locals 2

    .line 106002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106003
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/r5;->A00:Lcom/facebook/ads/redexgen/X/Am;

    .line 106004
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/r5;->A01:Lcom/facebook/ads/redexgen/X/rH;

    .line 106005
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/r5;->A02:Lcom/facebook/ads/redexgen/X/rF;

    .line 106006
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Aj;

    invoke-direct {v0, p3, v1}, Lcom/facebook/ads/redexgen/X/Aj;-><init>(Lcom/facebook/ads/redexgen/X/rF;Lcom/facebook/ads/redexgen/X/r6;)V

    invoke-virtual {p2, v0}, Lcom/facebook/ads/redexgen/X/rL;->A03(Lcom/facebook/ads/redexgen/X/rM;)V

    .line 106007
    return-void
.end method

.method public static A00(I)Lcom/facebook/ads/redexgen/X/rW;
    .locals 2

    .line 106008
    const/4 v0, 0x0

    if-nez v0, :cond_0

    .line 106009
    const/4 v0, 0x0

    return-object v0

    .line 106010
    :cond_0
    const/4 p0, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/r5;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rL;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rR;)Lcom/facebook/ads/redexgen/X/r5;
    .locals 9

    .line 106011
    sget-object v0, Lcom/facebook/ads/redexgen/X/r5;->A03:Lcom/facebook/ads/redexgen/X/r5;

    .line 106012
    .local p1, "localsTestInstance":Lcom/facebook/ads/redexgen/X/r5;
    if-eqz v0, :cond_0

    .line 106013
    return-object v0

    .line 106014
    :cond_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/rH;

    move-object v2, p0

    invoke-direct {v6, v2}, Lcom/facebook/ads/redexgen/X/rH;-><init>(Lcom/facebook/ads/redexgen/X/Am;)V

    .line 106015
    .local p2, "viewpointRegistry":Lcom/facebook/ads/redexgen/X/rH;
    new-instance v1, Lcom/facebook/ads/redexgen/X/rF;

    sget-object v4, Lcom/facebook/ads/redexgen/X/CK;->A00:Lcom/facebook/ads/redexgen/X/CK;

    .line 106016
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106017
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/r5;->A00(I)Lcom/facebook/ads/redexgen/X/rW;

    const/4 p0, 0x0

    move-object v7, p4

    move-object v5, p3

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/rF;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rQ;Lcom/facebook/ads/redexgen/X/hc;Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/rH;Lcom/facebook/ads/redexgen/X/rR;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/rW;)V

    .line 106018
    .local v0, "viewpointScanner":Lcom/facebook/ads/redexgen/X/rF;
    new-instance v0, Lcom/facebook/ads/redexgen/X/r5;

    invoke-direct {v0, v2, p1, v1, v6}, Lcom/facebook/ads/redexgen/X/r5;-><init>(Lcom/facebook/ads/redexgen/X/Am;Lcom/facebook/ads/redexgen/X/rL;Lcom/facebook/ads/redexgen/X/rF;Lcom/facebook/ads/redexgen/X/rH;)V

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/r5;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_1

    aget-byte v3, p1, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/r5;->A06:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x13

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/r5;->A06:[Ljava/lang/String;

    const-string v1, "At1Zr1oMV19x7NxsOWFoG9shzyjt72Ks"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x7

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/r5;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x59t
        -0x4at
        -0x57t
        -0x5bt
        -0x48t
        -0x57t
    .end array-data
.end method


# virtual methods
.method public final A04(Lcom/facebook/ads/redexgen/X/rK;)V
    .locals 1

    .line 106019
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A02:Lcom/facebook/ads/redexgen/X/rF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/rF;->A0H(Lcom/facebook/ads/redexgen/X/rK;)V

    .line 106020
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/rI;)V
    .locals 1

    .line 106021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A02:Lcom/facebook/ads/redexgen/X/rF;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/rF;->A0I(Lcom/facebook/ads/redexgen/X/rI;)V

    .line 106022
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/r4;)V
    .locals 1

    .line 106023
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/r5;->A07(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;)V

    .line 106024
    return-void
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;)V
    .locals 1

    .line 106025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A00:Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 106026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A01:Lcom/facebook/ads/redexgen/X/rH;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/rH;->A06(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;)V

    .line 106027
    :goto_0
    return-void

    .line 106028
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A01:Lcom/facebook/ads/redexgen/X/rH;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/rH;->A05(Lcom/facebook/ads/redexgen/X/r4;)V

    goto :goto_0
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;Lcom/facebook/ads/redexgen/X/rN;)V
    .locals 1

    .line 106029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A00:Lcom/facebook/ads/redexgen/X/Am;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Am;->A00:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 106030
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A01:Lcom/facebook/ads/redexgen/X/rH;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/rH;->A07(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;Lcom/facebook/ads/redexgen/X/rN;)V

    .line 106031
    :goto_0
    return-void

    .line 106032
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/r5;->A01:Lcom/facebook/ads/redexgen/X/rH;

    invoke-virtual {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/rH;->A08(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)V

    goto :goto_0
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rN;)V
    .locals 1

    .line 106033
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/r5;->A08(Lcom/facebook/ads/redexgen/X/r4;Lcom/facebook/ads/redexgen/X/rU;Lcom/facebook/ads/redexgen/X/rN;)V

    .line 106034
    return-void
.end method
