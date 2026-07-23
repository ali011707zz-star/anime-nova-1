.class public final Lcom/facebook/ads/redexgen/X/pB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/1j;
    .locals 2

    .line 104030
    new-instance v1, Lcom/facebook/ads/redexgen/X/1j;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/1j;-><init>()V

    .line 104031
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/1j;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pB;->A00:Lcom/facebook/ads/redexgen/X/5t;

    if-eqz v0, :cond_0

    .line 104032
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pB;->A00:Lcom/facebook/ads/redexgen/X/5t;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AQ;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 104033
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic A5I()Lcom/facebook/ads/redexgen/X/pF;
    .locals 1

    .line 104034
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pB;->A00()Lcom/facebook/ads/redexgen/X/1j;

    move-result-object v0

    return-object v0
.end method
