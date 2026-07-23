.class public final Lcom/facebook/ads/redexgen/X/Pl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Pv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Pv;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Pv;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 58188
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 58189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Pv;->setScrollState(I)V

    .line 58190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pl;->A00:Lcom/facebook/ads/redexgen/X/Pv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Pv;->A0f()V

    .line 58191
    return-void
.end method
