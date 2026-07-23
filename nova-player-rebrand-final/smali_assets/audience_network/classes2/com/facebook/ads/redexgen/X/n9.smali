.class public final Lcom/facebook/ads/redexgen/X/n9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/FF;


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99863
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/n9;-><init>(I)V

    .line 99864
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 99865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99866
    iput p1, p0, Lcom/facebook/ads/redexgen/X/n9;->A00:I

    .line 99867
    return-void
.end method


# virtual methods
.method public final A8Z(I)I
    .locals 2

    .line 99868
    iget v1, p0, Lcom/facebook/ads/redexgen/X/n9;->A00:I

    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 99869
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 99870
    const/4 v0, 0x6

    .line 99871
    :goto_0
    return v0

    .line 99872
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 99873
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/n9;->A00:I

    return v0
.end method

.method public final A8u(Lcom/facebook/ads/redexgen/X/FE;)J
    .locals 2

    .line 99874
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/FE;->A03:Ljava/io/IOException;

    .line 99875
    .local v0, "exception":Ljava/io/IOException;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/3K;

    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/io/FileNotFoundException;

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/AM;

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/FP;

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5b;->A00(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99876
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 99877
    :goto_0
    return-wide v0

    .line 99878
    :cond_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/FE;->A00:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v1, v0, 0x3e8

    const/16 v0, 0x1388

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
