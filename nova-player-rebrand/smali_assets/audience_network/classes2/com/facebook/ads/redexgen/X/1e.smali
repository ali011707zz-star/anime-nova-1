.class public final Lcom/facebook/ads/redexgen/X/1e;
.super Lcom/facebook/ads/redexgen/X/9t;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9n;->A00()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9n;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9n;Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 7086
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1e;->A00:Lcom/facebook/ads/redexgen/X/9n;

    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/9t;-><init>(Lcom/facebook/ads/androidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public final A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;
    .locals 1

    .line 7087
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9t;->A0I(ILcom/facebook/ads/redexgen/X/pl;Z)Lcom/facebook/ads/redexgen/X/pl;

    .line 7088
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/pl;->A05:Z

    .line 7089
    return-object p2
.end method

.method public final A0L(ILcom/facebook/ads/redexgen/X/pj;J)Lcom/facebook/ads/redexgen/X/pj;
    .locals 1

    .line 7090
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/9t;->A0L(ILcom/facebook/ads/redexgen/X/pj;J)Lcom/facebook/ads/redexgen/X/pj;

    .line 7091
    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/facebook/ads/redexgen/X/pj;->A0F:Z

    .line 7092
    return-object p2
.end method
