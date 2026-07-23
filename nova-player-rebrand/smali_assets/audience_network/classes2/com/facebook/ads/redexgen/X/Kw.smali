.class public final Lcom/facebook/ads/redexgen/X/Kw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/lM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsdBuffer"
.end annotation


# static fields
.field public static final A04:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:[B

.field public A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 961
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kw;->A04:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 48817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48818
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:[B

    .line 48819
    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 48820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    .line 48821
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    .line 48822
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:I

    .line 48823
    return-void
.end method

.method public final A01([BII)V
    .locals 2

    .line 48824
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    if-nez v0, :cond_0

    .line 48825
    return-void

    .line 48826
    :cond_0
    sub-int/2addr p3, p2

    .line 48827
    .local v0, "readLength":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:[B

    array-length v1, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    add-int/2addr v0, p3

    if-ge v1, v0, :cond_1

    .line 48828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    add-int/2addr v0, p3

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:[B

    .line 48829
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A02:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48830
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    .line 48831
    return-void
.end method

.method public final A02(II)Z
    .locals 3

    .line 48832
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 48833
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    .line 48834
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:I

    if-nez v0, :cond_2

    const/16 v0, 0xb5

    if-ne p1, v0, :cond_2

    .line 48835
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Kw;->A01:I

    .line 48836
    :cond_0
    :goto_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Kw;->A04:[B

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kw;->A04:[B

    array-length v0, v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Kw;->A01([BII)V

    .line 48837
    return v2

    .line 48838
    :cond_1
    const/16 v0, 0xb3

    if-ne p1, v0, :cond_0

    .line 48839
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    goto :goto_0

    .line 48840
    :cond_2
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/Kw;->A03:Z

    .line 48841
    return v1
.end method
