.class public final Lcom/facebook/ads/redexgen/X/28;
.super Lcom/facebook/ads/redexgen/X/Bv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ax;->A00()Lcom/facebook/ads/redexgen/X/4C;
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
            "+TE;>;"
        }
    .end annotation
.end field

.field public final A01:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TE;>;"
        }
    .end annotation
.end field

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Ax;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 8847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/28;->A02:Lcom/facebook/ads/redexgen/X/Ax;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Bv;-><init>()V

    .line 8848
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A02:Lcom/facebook/ads/redexgen/X/Ax;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ax;->A00:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A00:Ljava/util/Iterator;

    .line 8849
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A02:Lcom/facebook/ads/redexgen/X/Ax;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ax;->A01:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A01:Ljava/util/Iterator;

    .line 8850
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

    .line 8851
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8852
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A00:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 8853
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A01:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8855
    .local v0, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/28;->A02:Lcom/facebook/ads/redexgen/X/Ax;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ax;->A00:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8856
    return-object v1

    .line 8857
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Bv;->A01()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
