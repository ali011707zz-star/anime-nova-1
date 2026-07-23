.class public final Lcom/facebook/ads/redexgen/X/27;
.super Lcom/facebook/ads/redexgen/X/Bv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Aw;->A00()Lcom/facebook/ads/redexgen/X/4C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/Bv<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Aw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Aw;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8839
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/Aw;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;-><init>()V

    .line 8840
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/Aw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Aw;->A00:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Ljava/util/Iterator;

    .line 8841
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 8842
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8844
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/27;->A01:Lcom/facebook/ads/redexgen/X/Aw;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Aw;->A01:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8845
    return-object v1

    .line 8846
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A01()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
