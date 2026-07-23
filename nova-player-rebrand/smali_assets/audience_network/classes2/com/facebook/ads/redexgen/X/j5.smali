.class public final Lcom/facebook/ads/redexgen/X/j5;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/O4;->A03()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/O4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88102
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/j5;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 88103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j5;->A00:Lcom/facebook/ads/redexgen/X/O4;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/O4;->A00:Z

    if-nez v0, :cond_0

    .line 88104
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/j5;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O4;->A05(Lcom/facebook/ads/redexgen/X/O4;)V

    .line 88105
    :cond_0
    return-void
.end method
