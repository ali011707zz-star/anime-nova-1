.class public final Lcom/facebook/ads/redexgen/X/Wr;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Wm;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71544
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 71545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A00(Lcom/facebook/ads/redexgen/X/Wm;)I

    .line 71546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A01(Lcom/facebook/ads/redexgen/X/Wm;)J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 71547
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A01(Lcom/facebook/ads/redexgen/X/Wm;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71548
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wr;->A00:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()V

    .line 71549
    return-void
.end method
