.class public abstract Lcom/facebook/ads/redexgen/X/Hu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/mb;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Hd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hd;)V
    .locals 0

    .line 39999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40000
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hu;->A00:Lcom/facebook/ads/redexgen/X/Hd;

    .line 40001
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/4v;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation

    .line 40002
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Hu;->A0B(Lcom/facebook/ads/redexgen/X/4v;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Hu;->A0C(Lcom/facebook/ads/redexgen/X/4v;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract A0B(Lcom/facebook/ads/redexgen/X/4v;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation
.end method

.method public abstract A0C(Lcom/facebook/ads/redexgen/X/4v;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/3K;
        }
    .end annotation
.end method
