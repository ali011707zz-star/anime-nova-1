.class public abstract Lcom/facebook/ads/redexgen/X/Ew;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ev;,
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/TrackSelector$Factory;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ev;

.field public A01:Lcom/facebook/ads/redexgen/X/F6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/F6;
    .locals 1

    .line 35304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/F6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/F6;

    return-object v0
.end method

.method public final A01()V
    .locals 1

    .line 35305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    if-eqz v0, :cond_0

    .line 35306
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ev;->AGD()V

    .line 35307
    :cond_0
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/F6;)V
    .locals 0

    .line 35308
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ew;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    .line 35309
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ew;->A01:Lcom/facebook/ads/redexgen/X/F6;

    .line 35310
    return-void
.end method

.method public abstract A0Y()Z
.end method

.method public abstract A0b([Lcom/facebook/ads/redexgen/X/7p;Lcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)Lcom/facebook/ads/redexgen/X/Ex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation
.end method

.method public abstract A0c(Ljava/lang/Object;)V
.end method
