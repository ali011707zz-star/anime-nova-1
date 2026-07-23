.class public final Lcom/facebook/ads/redexgen/X/GT;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4V;->A0O(Lcom/facebook/ads/redexgen/X/4A;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4A;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 750
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "zQTxaAZtyj5Zf7xpyBa5Wo13"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZyRPoqiC9PInhvt4VYdLIOd5Fjjwld3Q"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AJVcAlxtfo1o3uDwHkILc2qtWBcw5I"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "qm4l90vWWtQXhhB5Cv7"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "msnWA3qGYryppWjZvi7PZr4M3Bb415RH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kQT0oRvSr6py"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zmROIVOKOovaIXaapuTgFe6PU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "TFR8Ke0ijybG7ZAZ7LbnVmkovmXx0N"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/GT;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/GT;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 37142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GT;->A00:Lcom/facebook/ads/redexgen/X/4V;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/GT;->A01:Lcom/facebook/ads/redexgen/X/4A;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/GT;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x16

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

    const/16 v0, 0x16

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/GT;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x78t
        -0x55t
        -0x64t
        -0x64t
        -0x65t
        -0x58t
        -0x61t
        -0x5ct
        -0x63t
        0x56t
        -0x61t
        -0x5ct
        -0x66t
        -0x65t
        -0x64t
        -0x61t
        -0x5ct
        -0x61t
        -0x56t
        -0x65t
        -0x5et
        -0x51t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 4

    .line 37143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GT;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A08(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/fm;

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GT;->A00:Lcom/facebook/ads/redexgen/X/4V;

    .line 37144
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A08(Lcom/facebook/ads/redexgen/X/4V;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getCurrentPositionInMillis()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/GT;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/GT;->A03:[Ljava/lang/String;

    const-string v1, "tIcfuB5su4wQORzkX2J"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GT;->A01:Lcom/facebook/ads/redexgen/X/4A;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EB;->A00()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 37145
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/GT;->A00:Lcom/facebook/ads/redexgen/X/4V;

    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/GT;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4V;->A0M(Lcom/facebook/ads/redexgen/X/4V;Ljava/lang/String;)V

    .line 37146
    :cond_1
    return-void
.end method
