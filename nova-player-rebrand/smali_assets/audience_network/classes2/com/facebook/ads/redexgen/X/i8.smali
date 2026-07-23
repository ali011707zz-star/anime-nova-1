.class public final Lcom/facebook/ads/redexgen/X/i8;
.super Lcom/facebook/ads/redexgen/X/PC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/i7;->A00()Lcom/facebook/ads/redexgen/X/PC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/PC<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/i7;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/i7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86289
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/PC;-><init>()V

    return-void
.end method


# virtual methods
.method public final A04()I
    .locals 1

    .line 86290
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/PF;->A00:I

    return v0
.end method

.method public final A05(Ljava/lang/Object;)I
    .locals 1

    .line 86291
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A08(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A06(Ljava/lang/Object;)I
    .locals 1

    .line 86292
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A07(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/i7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86293
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    return-object v0
.end method

.method public final A0B(II)Ljava/lang/Object;
    .locals 2

    .line 86294
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/PF;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/2addr v0, p2

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 86295
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PF;->A0C(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final A0D()V
    .locals 1

    .line 86296
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PF;->clear()V

    .line 86297
    return-void
.end method

.method public final A0E(I)V
    .locals 1

    .line 86298
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PF;->A0A(I)Ljava/lang/Object;

    .line 86299
    return-void
.end method

.method public final A0F(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 86300
    .local p0, "this":Lcom/facebook/ads/redexgen/X/i8;, "Lcom/facebook/ads/internal/androidx/support/v4/util/ArrayMap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/i8;->A00:Lcom/facebook/ads/redexgen/X/i7;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/PF;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86301
    return-void
.end method
