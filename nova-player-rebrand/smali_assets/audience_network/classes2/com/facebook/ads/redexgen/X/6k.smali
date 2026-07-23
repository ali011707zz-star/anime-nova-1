.class public final Lcom/facebook/ads/redexgen/X/6k;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/androidx/media3/common/Timeline;

.field public final A01:Lcom/facebook/ads/redexgen/X/Cx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cx;Lcom/facebook/ads/androidx/media3/common/Timeline;)V
    .locals 0

    .line 17828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17829
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6k;->A01:Lcom/facebook/ads/redexgen/X/Cx;

    .line 17830
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6k;->A00:Lcom/facebook/ads/androidx/media3/common/Timeline;

    .line 17831
    return-void
.end method
