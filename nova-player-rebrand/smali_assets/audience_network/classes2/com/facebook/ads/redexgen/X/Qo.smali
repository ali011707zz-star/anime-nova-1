.class public final Lcom/facebook/ads/redexgen/X/Qo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60577
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 60578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    if-eqz v0, :cond_0

    .line 60579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:Lcom/facebook/ads/redexgen/X/7M;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7M;->A05:Lcom/facebook/ads/redexgen/X/Qy;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qy;->A0I()V

    .line 60580
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Qo;->A00:Lcom/facebook/ads/redexgen/X/7M;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/7M;->A0K:Z

    .line 60581
    return-void
.end method
