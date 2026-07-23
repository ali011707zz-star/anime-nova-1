.class public abstract Lcom/facebook/ads/redexgen/X/g7;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/g3;

.field public A01:Lcom/facebook/ads/redexgen/X/g6;

.field public A02:Ljava/lang/String;

.field public A03:Ljava/lang/String;

.field public A04:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2853
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cXHhWS2U0AEbFhhmPHmVuH"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wVYzC7Nkmxeng7LXEltnvgZwmBeHxDlH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "QdB4DFNTOqs3kzyCIXC3RbQ0s8ofNHfi"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NfO94uVHpQsZyAD7D3sB88"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qb7NVaH0CDkMRhWHzZDzGB0JzykCOgpa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "79nTtHn72qGvVt6br"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vvJx1YlMdzFVt9WMGmsv2mWYh0j6ZH0a"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFbWjj4EQG077AWDW1GPYYaHkUkOcLUG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/g7;->A06:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/g7;->A01()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/g9;Lcom/facebook/ads/redexgen/X/g3;)V
    .locals 4

    .line 83069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83070
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g7;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A03:Ljava/lang/String;

    .line 83071
    if-eqz p1, :cond_0

    .line 83072
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/g7;->A03:Ljava/lang/String;

    .line 83073
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/g9;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 83074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/g7;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/g9;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A03:Ljava/lang/String;

    .line 83075
    :cond_1
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/g7;->A00:Lcom/facebook/ads/redexgen/X/g3;

    .line 83076
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/g7;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

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
    .locals 4

    const/4 v0, 0x1

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/g7;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/g7;->A06:[Ljava/lang/String;

    const-string v1, "4G6bp2JlnqCaKfrAR3d18U2njy0G4HP7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "szJTv6Q1Z3W9cwFEkaj97Hf7uwsDfHCt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/g7;->A05:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x79t
    .end array-data
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/g3;
    .locals 1

    .line 83077
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A00:Lcom/facebook/ads/redexgen/X/g3;

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/g6;
    .locals 1

    .line 83078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A01:Lcom/facebook/ads/redexgen/X/g6;

    return-object v0
.end method

.method public final A04()Ljava/lang/String;
    .locals 1

    .line 83079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    .line 83080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A03:Ljava/lang/String;

    return-object v0
.end method

.method public final A06()[B
    .locals 1

    .line 83081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/g7;->A04:[B

    return-object v0
.end method
