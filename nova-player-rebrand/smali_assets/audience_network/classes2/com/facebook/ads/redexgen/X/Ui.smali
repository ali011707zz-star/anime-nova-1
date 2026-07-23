.class public final Lcom/facebook/ads/redexgen/X/Ui;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NumberedRecordFile"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Uf;


# direct methods
.method public constructor <init>(ILcom/facebook/ads/redexgen/X/Uf;)V
    .locals 0

    .line 68044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68045
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:I

    .line 68046
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ui;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    .line 68047
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 68048
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A00:I

    return v0
.end method

.method public final A01()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uf;->A05()I

    move-result v0

    return v0
.end method

.method public final A02(I[BI[II)Lcom/facebook/ads/redexgen/X/UW;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68050
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    move v5, p5

    move-object v4, p4

    move v3, p3

    move-object v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Uf;->A06(I[BI[II)Lcom/facebook/ads/redexgen/X/UW;

    move-result-object v0

    return-object v0
.end method

.method public final A03()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68051
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uf;->A07()V

    .line 68052
    return-void
.end method

.method public final A04()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Uf;->A08()V

    .line 68054
    return-void
.end method

.method public final A05([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ui;->A01:Lcom/facebook/ads/redexgen/X/Uf;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Uf;->A09([B)Z

    move-result v0

    return v0
.end method
