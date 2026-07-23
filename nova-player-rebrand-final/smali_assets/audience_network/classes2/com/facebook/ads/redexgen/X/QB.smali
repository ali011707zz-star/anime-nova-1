.class public final Lcom/facebook/ads/redexgen/X/QB;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xx;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59896
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 59897
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QB;->A00:Lcom/facebook/ads/redexgen/X/Xx;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A01(Lcom/facebook/ads/redexgen/X/Xx;Z)V

    .line 59898
    return-void
.end method
