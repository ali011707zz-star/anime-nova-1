.class public final Lcom/facebook/ads/redexgen/X/Te;
.super Ljava/lang/Exception;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lorg/json/JSONObject;

.field public A04:Z

.field public A05:Z

.field public A06:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 65586
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65587
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:I

    .line 65588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A06:Z

    .line 65589
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A05:Z

    .line 65590
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A04:Z

    .line 65591
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    .line 65592
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A02:I

    .line 65593
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 65595
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:I

    .line 65596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A06:Z

    .line 65597
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A05:Z

    .line 65598
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A04:Z

    .line 65599
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    .line 65600
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A02:I

    .line 65601
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 65602
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 65603
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:I

    .line 65604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A06:Z

    .line 65605
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A05:Z

    .line 65606
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A04:Z

    .line 65607
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    .line 65608
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A02:I

    .line 65609
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 65610
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1

    .line 65611
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:I

    return v0
.end method

.method public final A02()I
    .locals 1

    .line 65612
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A02:I

    return v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 65613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A03:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final A04(I)V
    .locals 0

    .line 65614
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A00:I

    .line 65615
    return-void
.end method

.method public final A05(I)V
    .locals 0

    .line 65616
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A01:I

    .line 65617
    return-void
.end method

.method public final A06(I)V
    .locals 0

    .line 65618
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A02:I

    .line 65619
    return-void
.end method

.method public final A07(Lorg/json/JSONObject;)V
    .locals 0

    .line 65620
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A03:Lorg/json/JSONObject;

    .line 65621
    return-void
.end method

.method public final A08(Z)V
    .locals 0

    .line 65622
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A05:Z

    .line 65623
    return-void
.end method

.method public final A09(Z)V
    .locals 0

    .line 65624
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A04:Z

    .line 65625
    return-void
.end method

.method public final A0A(Z)V
    .locals 0

    .line 65626
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Te;->A06:Z

    .line 65627
    return-void
.end method

.method public final A0B()Z
    .locals 1

    .line 65628
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A05:Z

    return v0
.end method

.method public final A0C()Z
    .locals 1

    .line 65629
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A04:Z

    return v0
.end method

.method public final A0D()Z
    .locals 1

    .line 65630
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Te;->A06:Z

    return v0
.end method
