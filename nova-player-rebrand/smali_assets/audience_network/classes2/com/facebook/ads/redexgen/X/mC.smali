.class public final Lcom/facebook/ads/redexgen/X/mC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StszSampleSizeBox"
.end annotation


# static fields
.field public static A03:[B


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/4v;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mC;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/mD;Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 6

    .line 97410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97411
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/mD;->A00:Lcom/facebook/ads/redexgen/X/4v;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A02:Lcom/facebook/ads/redexgen/X/4v;

    .line 97412
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/mC;->A02:Lcom/facebook/ads/redexgen/X/4v;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0f(I)V

    .line 97413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v5

    .line 97414
    .local v0, "fixedSampleSize":I
    const/16 v2, 0x4d

    const/16 v1, 0x9

    const/16 v0, 0x14

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mC;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97415
    iget v1, p2, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    iget v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A06(II)I

    move-result v4

    .line 97416
    .local v1, "pcmFrameSize":I
    if-eqz v5, :cond_0

    rem-int v0, v5, v4

    if-eqz v0, :cond_1

    .line 97417
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1f

    const/16 v1, 0x2e

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x14

    const/16 v1, 0xb

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mC;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 97418
    move v5, v4

    .line 97419
    .end local v1    # "pcmFrameSize":I
    :cond_1
    if-nez v5, :cond_2

    const/4 v5, -0x1

    :cond_2
    iput v5, p0, Lcom/facebook/ads/redexgen/X/mC;->A00:I

    .line 97420
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A01:I

    .line 97421
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mC;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6c

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

    const/16 v0, 0x56

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mC;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x4dt
        0x1et
        0x19t
        0x1et
        0x17t
        0x4dt
        0x1et
        0xct
        0x0t
        0x1dt
        0x1t
        0x8t
        0x4dt
        0x1et
        0x4t
        0x17t
        0x8t
        0x57t
        0x4dt
        0x46t
        0x73t
        0x68t
        0x6at
        0x57t
        0x66t
        0x75t
        0x74t
        0x62t
        0x75t
        0x74t
        0x9t
        0x3dt
        0x2ct
        0x21t
        0x27t
        0x68t
        0x3bt
        0x29t
        0x25t
        0x38t
        0x24t
        0x2dt
        0x68t
        0x3bt
        0x21t
        0x32t
        0x2dt
        0x68t
        0x25t
        0x21t
        0x3bt
        0x25t
        0x29t
        0x3ct
        0x2bt
        0x20t
        0x66t
        0x68t
        0x3bt
        0x3ct
        0x3bt
        0x2ct
        0x68t
        0x3bt
        0x29t
        0x25t
        0x38t
        0x24t
        0x2dt
        0x68t
        0x3bt
        0x21t
        0x32t
        0x2dt
        0x72t
        0x68t
        0x19t
        0xdt
        0x1ct
        0x11t
        0x17t
        0x57t
        0xat
        0x19t
        0xft
    .end array-data
.end method


# virtual methods
.method public final A8A()I
    .locals 1

    .line 97422
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A00:I

    return v0
.end method

.method public final A8v()I
    .locals 1

    .line 97423
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A01:I

    return v0
.end method

.method public final AHS()I
    .locals 2

    .line 97424
    iget v1, p0, Lcom/facebook/ads/redexgen/X/mC;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A02:Lcom/facebook/ads/redexgen/X/4v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A0L()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/mC;->A00:I

    goto :goto_0
.end method
