.class public abstract Lcom/facebook/ads/redexgen/X/oQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3k;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/3i;

.field public A01:Lcom/facebook/ads/redexgen/X/3i;

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/3i;

.field public A06:Lcom/facebook/ads/redexgen/X/3i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103091
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A02:Ljava/nio/ByteBuffer;

    .line 103092
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    .line 103093
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A00:Lcom/facebook/ads/redexgen/X/3i;

    .line 103094
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 103095
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    .line 103096
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    .line 103097
    return-void
.end method


# virtual methods
.method public final A00(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 103098
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 103099
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A02:Ljava/nio/ByteBuffer;

    .line 103100
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A02:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    .line 103101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A02:Ljava/nio/ByteBuffer;

    return-object v0

    .line 103102
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final A01()Z
    .locals 1

    .line 103103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public abstract A09(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3j;
        }
    .end annotation
.end method

.method public A0A()V
    .locals 0

    .line 103104
    return-void
.end method

.method public A0B()V
    .locals 0

    .line 103105
    return-void
.end method

.method public final A57(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3j;
        }
    .end annotation

    .line 103106
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oQ;->A00:Lcom/facebook/ads/redexgen/X/3i;

    .line 103107
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/oQ;->A09(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A01:Lcom/facebook/ads/redexgen/X/3i;

    .line 103108
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oQ;->AAL()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A01:Lcom/facebook/ads/redexgen/X/3i;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    goto :goto_0
.end method

.method public A8d()Ljava/nio/ByteBuffer;
    .locals 2

    .line 103109
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    .line 103110
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    .line 103111
    return-object v1
.end method

.method public AAL()Z
    .locals 2

    .line 103112
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oQ;->A01:Lcom/facebook/ads/redexgen/X/3i;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3i;->A05:Lcom/facebook/ads/redexgen/X/3i;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public AAP()Z
    .locals 2

    .line 103113
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A04:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AHG()V
    .locals 1

    .line 103114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A04:Z

    .line 103115
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oQ;->A0B()V

    .line 103116
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 103117
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A03:Ljava/nio/ByteBuffer;

    .line 103118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A04:Z

    .line 103119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A00:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A05:Lcom/facebook/ads/redexgen/X/3i;

    .line 103120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A01:Lcom/facebook/ads/redexgen/X/3i;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oQ;->A06:Lcom/facebook/ads/redexgen/X/3i;

    .line 103121
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oQ;->A0A()V

    .line 103122
    return-void
.end method
