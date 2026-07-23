.class public final Lcom/facebook/ads/redexgen/X/Pd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/aq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6x;->A0F()Lcom/facebook/ads/redexgen/X/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pd;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6x;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58012
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pd;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

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

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pd;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x24t
        -0x26t
        -0x34t
        -0x27t
        -0x3at
        -0x37t
        -0x24t
        -0x33t
        -0x33t
        -0x34t
        -0x27t
        -0x34t
        -0x35t
        -0x3at
        -0x36t
        -0x2dt
        -0x30t
        -0x36t
        -0x2et
        -0x3at
        -0x30t
        -0x38t
        -0x37t
        -0x3at
        -0x2bt
        -0x38t
        -0x23t
        -0x30t
        -0x32t
        -0x38t
        -0x25t
        -0x30t
        -0x2at
        -0x2bt
    .end array-data
.end method


# virtual methods
.method public final AF7(Ljava/lang/String;)V
    .locals 2

    .line 58013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 58014
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    .line 58015
    return-void
.end method

.method public final AF9(Ljava/lang/String;)V
    .locals 4

    .line 58016
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    .line 58017
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/av;->setUrl(Ljava/lang/String;)V

    .line 58018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A01(Lcom/facebook/ads/redexgen/X/6x;)I

    move-result v0

    if-le v0, v1, :cond_0

    .line 58019
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    const/4 v2, 0x0

    const/16 v1, 0x22

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pd;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6x;->A0I(Ljava/lang/String;)V

    .line 58020
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6x;->A02(Lcom/facebook/ads/redexgen/X/6x;)I

    .line 58021
    return-void
.end method

.method public final AFY(I)V
    .locals 1

    .line 58022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A05:Z

    if-eqz v0, :cond_0

    .line 58023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0C:Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 58024
    :cond_0
    return-void
.end method

.method public final AFb(Ljava/lang/String;)V
    .locals 1

    .line 58025
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0F:Lcom/facebook/ads/redexgen/X/av;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/av;->setTitle(Ljava/lang/String;)V

    .line 58026
    return-void
.end method

.method public final AFe()V
    .locals 2

    .line 58027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pd;->A00:Lcom/facebook/ads/redexgen/X/6x;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PZ;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 58028
    return-void
.end method
