.class public Lcom/facebook/ads/redexgen/X/WG;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/WF;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Tw;

.field public final A01:Lcom/facebook/ads/redexgen/X/WF;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WF;)V
    .locals 1

    .line 70556
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/WG;-><init>(Lcom/facebook/ads/redexgen/X/WF;Lcom/facebook/ads/redexgen/X/Tw;Ljava/lang/String;)V

    .line 70557
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WF;Lcom/facebook/ads/redexgen/X/Tw;Ljava/lang/String;)V
    .locals 0

    .line 70558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70559
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WG;->A01:Lcom/facebook/ads/redexgen/X/WF;

    .line 70560
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WG;->A00:Lcom/facebook/ads/redexgen/X/Tw;

    .line 70561
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/WG;->A02:Ljava/lang/String;

    .line 70562
    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/Tw;
    .locals 1

    .line 70563
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WG;->A00:Lcom/facebook/ads/redexgen/X/Tw;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/WF;
    .locals 1

    .line 70564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WG;->A01:Lcom/facebook/ads/redexgen/X/WF;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 70565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WG;->A02:Ljava/lang/String;

    return-object v0
.end method
