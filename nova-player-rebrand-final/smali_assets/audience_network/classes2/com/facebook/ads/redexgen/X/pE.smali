.class public final Lcom/facebook/ads/redexgen/X/pE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5Y;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:Lcom/facebook/ads/redexgen/X/5Y;

.field public final A02:Lcom/facebook/ads/redexgen/X/5t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5t;Lcom/facebook/ads/redexgen/X/5Y;)V
    .locals 1

    .line 104039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104040
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:Landroid/content/Context;

    .line 104041
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pE;->A02:Lcom/facebook/ads/redexgen/X/5t;

    .line 104042
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/pE;->A01:Lcom/facebook/ads/redexgen/X/5Y;

    .line 104043
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5t;)V
    .locals 1

    .line 104044
    new-instance v0, Lcom/facebook/ads/redexgen/X/AO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/AO;-><init>()V

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/AO;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/AO;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/facebook/ads/redexgen/X/pE;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5t;Lcom/facebook/ads/redexgen/X/5Y;)V

    .line 104045
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/AP;
    .locals 3

    .line 104046
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/pE;->A00:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A01:Lcom/facebook/ads/redexgen/X/5Y;

    .line 104047
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5Y;->A5I()Lcom/facebook/ads/redexgen/X/pF;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/AP;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/AP;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/pF;)V

    .line 104048
    .local v0, "dataSource":Lcom/facebook/ads/redexgen/X/AP;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A02:Lcom/facebook/ads/redexgen/X/5t;

    if-eqz v0, :cond_0

    .line 104049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pE;->A02:Lcom/facebook/ads/redexgen/X/5t;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/AP;->A43(Lcom/facebook/ads/redexgen/X/5t;)V

    .line 104050
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final bridge synthetic A5I()Lcom/facebook/ads/redexgen/X/pF;
    .locals 1

    .line 104051
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pE;->A00()Lcom/facebook/ads/redexgen/X/AP;

    move-result-object v0

    return-object v0
.end method
