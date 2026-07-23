.class public final Lcom/facebook/ads/redexgen/X/2D;
.super Lcom/facebook/ads/redexgen/X/BP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2C;->A0M()Lcom/facebook/ads/redexgen/X/BP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BP<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2C;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8929
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2D;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BP;-><init>()V

    return-void
.end method

.method private final A00(I)Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8930
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2D;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A00(Lcom/facebook/ads/redexgen/X/2C;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ki;->A00(II)I

    .line 8931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A02(Lcom/facebook/ads/redexgen/X/2C;)[Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, p1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A01(Lcom/facebook/ads/redexgen/X/2C;)I

    move-result v0

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 8932
    .local v0, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A02(Lcom/facebook/ads/redexgen/X/2C;)[Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, p1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A01(Lcom/facebook/ads/redexgen/X/2C;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 8933
    .local v1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v3, v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final A0K()Z
    .locals 1

    .line 8934
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2D;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 8935
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2D;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2D;->A00(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 8936
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2D;, "Lcom/google/common/collect/RegularImmutableMap$EntrySet$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2D;->A00:Lcom/facebook/ads/redexgen/X/2C;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A00(Lcom/facebook/ads/redexgen/X/2C;)I

    move-result v0

    return v0
.end method
