.class public final Lcom/facebook/ads/redexgen/X/QT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7P;->A0I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7P;

.field public final synthetic A01:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7P;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60177
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Lcom/facebook/ads/redexgen/X/7P;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/QT;->A01:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 60178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/RK;

    .line 60179
    .local v1, "holder":Lcom/facebook/ads/redexgen/X/RK;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Lcom/facebook/ads/redexgen/X/7P;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7P;->A0d(Lcom/facebook/ads/redexgen/X/RK;)V

    .line 60180
    .end local v1    # "holder":Lcom/facebook/ads/redexgen/X/RK;
    goto :goto_0

    .line 60181
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A01:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A00:Lcom/facebook/ads/redexgen/X/7P;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/7P;->A01:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QT;->A01:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60183
    return-void
.end method
