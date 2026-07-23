.class public final Lcom/facebook/ads/redexgen/X/Oe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Of;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metric"
.end annotation


# instance fields
.field public A00:D

.field public A01:D

.field public A02:D

.field public A03:D

.field public A04:D

.field public A05:D

.field public A06:D

.field public A07:D

.field public A08:D

.field public A09:D

.field public A0A:D

.field public A0B:I


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 55921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55922
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A05:D

    .line 55923
    return-void
.end method


# virtual methods
.method public final A00()D
    .locals 2

    .line 55924
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:D

    return-wide v0
.end method

.method public final A01()D
    .locals 2

    .line 55925
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:D

    return-wide v0
.end method

.method public final A02()D
    .locals 2

    .line 55926
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:D

    return-wide v0
.end method

.method public final A03()D
    .locals 2

    .line 55927
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A06:D

    return-wide v0
.end method

.method public final A04()D
    .locals 2

    .line 55928
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A07:D

    return-wide v0
.end method

.method public final A05()D
    .locals 2

    .line 55929
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A08:D

    return-wide v0
.end method

.method public final A06()D
    .locals 2

    .line 55930
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0B:I

    if-nez v0, :cond_0

    .line 55931
    const-wide/16 v0, 0x0

    return-wide v0

    .line 55932
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A09:D

    return-wide v0
.end method

.method public final A07()V
    .locals 4

    .line 55933
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:D

    .line 55934
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:D

    .line 55935
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:D

    .line 55936
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:D

    .line 55937
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A06:D

    .line 55938
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0B:I

    .line 55939
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A08:D

    .line 55940
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A09:D

    .line 55941
    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0A:D

    .line 55942
    return-void
.end method

.method public final A08()V
    .locals 2

    .line 55943
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:D

    .line 55944
    return-void
.end method

.method public final A09(DD)V
    .locals 4

    .line 55945
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0B:I

    .line 55946
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A08:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A08:D

    .line 55947
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Oe;->A02:D

    .line 55948
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0A:D

    mul-double v0, p3, p1

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0A:D

    .line 55949
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A0A:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A08:D

    div-double/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A00:D

    .line 55950
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A09:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A09:D

    .line 55951
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A06:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A06:D

    .line 55952
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Oe;->A05:D

    cmpl-double v0, p3, v1

    if-ltz v0, :cond_0

    .line 55953
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A04:D

    .line 55954
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:D

    .line 55955
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Oe;->A07:D

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:D

    .line 55956
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A07:D

    .line 55957
    :goto_0
    return-void

    .line 55958
    :cond_0
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A03:D

    .line 55959
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Oe;->A01:D

    goto :goto_0
.end method
