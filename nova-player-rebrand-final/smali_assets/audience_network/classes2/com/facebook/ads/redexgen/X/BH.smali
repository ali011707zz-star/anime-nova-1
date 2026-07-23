.class public Lcom/facebook/ads/redexgen/X/BH;
.super Lcom/facebook/ads/redexgen/X/qf;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/po;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/qf<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 30336
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/qf;-><init>()V

    .line 30337
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ki;->A04(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/BH;->A00:Ljava/util/Map;

    .line 30338
    return-void
.end method


# virtual methods
.method public A00()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 30339
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BH;->A00:Ljava/util/Map;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 30340
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 30341
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 30342
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 30343
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 30344
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/po;->A02(Ljava/util/Iterator;)Lcom/facebook/ads/redexgen/X/BL;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 30345
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/BH;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30346
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30347
    const/4 v0, 0x1

    return v0

    .line 30348
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final size()I
    .locals 1

    .line 30349
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BH;, "Lcom/google/common/collect/Maps$KeySet<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/BH;->A00()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
