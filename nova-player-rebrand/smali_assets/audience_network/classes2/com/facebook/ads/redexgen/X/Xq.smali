.class public final Lcom/facebook/ads/redexgen/X/Xq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnalysisWindow"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:I

.field public final A02:I

.field public final A03:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 73075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73076
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A02:I

    .line 73077
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Xq;->A01:I

    .line 73078
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    .line 73079
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    .line 73080
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    .line 73081
    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    return-object v0
.end method

.method public final A01()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73083
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 73084
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()V
    .locals 2

    .line 73085
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 73086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 73087
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A02:I

    if-le v1, v0, :cond_0

    .line 73088
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 73089
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 73090
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    .line 73091
    :goto_0
    return-void

    .line 73092
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    goto :goto_0
.end method

.method public final A04(Ljava/lang/String;)V
    .locals 2

    .line 73093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 73094
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A01:I

    if-gt v1, v0, :cond_0

    .line 73095
    return-void

    .line 73096
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73097
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 73098
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A03:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Ljava/lang/String;

    .line 73099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A02:I

    if-le v1, v0, :cond_2

    .line 73100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xq;->A04:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    .line 73101
    :cond_2
    return-void
.end method
