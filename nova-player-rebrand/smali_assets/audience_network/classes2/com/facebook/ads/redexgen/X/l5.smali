.class public final Lcom/facebook/ads/redexgen/X/l5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/L8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/4u;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/l3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/l3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 92562
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92563
    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/4u;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:Lcom/facebook/ads/redexgen/X/4u;

    .line 92564
    return-void
.end method


# virtual methods
.method public final A5A(Lcom/facebook/ads/redexgen/X/4v;)V
    .locals 7

    .line 92565
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92566
    .local v0, "tableId":I
    if-eqz v0, :cond_0

    .line 92567
    return-void

    .line 92568
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A0I()I

    move-result v0

    .line 92569
    .local v1, "secondHeaderByte":I
    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    .line 92570
    return-void

    .line 92571
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4v;->A0g(I)V

    .line 92572
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4v;->A07()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    .line 92573
    .local v2, "programCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 92574
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/4v;->A0h(Lcom/facebook/ads/redexgen/X/4u;I)V

    .line 92575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:Lcom/facebook/ads/redexgen/X/4u;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v2

    .line 92576
    .local v5, "programNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:Lcom/facebook/ads/redexgen/X/4u;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92577
    const/16 v1, 0xd

    if-nez v2, :cond_3

    .line 92578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A09(I)V

    .line 92579
    .end local v5    # "programNumber":I
    .end local v6
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92580
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A00:Lcom/facebook/ads/redexgen/X/4u;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/4u;->A04(I)I

    move-result v3

    .line 92581
    .local v6, "pid":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A06(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 92582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A06(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    new-instance v1, Lcom/facebook/ads/redexgen/X/l4;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/l4;-><init>(Lcom/facebook/ads/redexgen/X/l3;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/l9;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/l9;-><init>(Lcom/facebook/ads/redexgen/X/L8;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A02(Lcom/facebook/ads/redexgen/X/l3;)I

    goto :goto_1

    .line 92584
    .end local v4    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A03(Lcom/facebook/ads/redexgen/X/l3;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_5

    .line 92585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/l5;->A01:Lcom/facebook/ads/redexgen/X/l3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/l3;->A06(Lcom/facebook/ads/redexgen/X/l3;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 92586
    :cond_5
    return-void
.end method

.method public final AAA(Lcom/facebook/ads/redexgen/X/53;Lcom/facebook/ads/redexgen/X/HA;Lcom/facebook/ads/redexgen/X/LG;)V
    .locals 0

    .line 92587
    return-void
.end method
