.class public final synthetic Lcom/facebook/ads/redexgen/X/nO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Eg;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9i;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/9h;

.field public final synthetic A02:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9h;Lcom/facebook/ads/redexgen/X/9i;Z)V
    .locals 0

    .line 100633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nO;->A01:Lcom/facebook/ads/redexgen/X/9h;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nO;->A00:Lcom/facebook/ads/redexgen/X/9i;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/nO;->A02:Z

    return-void
.end method


# virtual methods
.method public final A5F(ILcom/facebook/ads/redexgen/X/pg;[I)Ljava/util/List;
    .locals 6

    .line 100634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nO;->A01:Lcom/facebook/ads/redexgen/X/9h;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nO;->A00:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/nO;->A02:Z

    move-object v5, p3

    move-object v4, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9h;->A0e(Lcom/facebook/ads/redexgen/X/9i;ZILcom/facebook/ads/redexgen/X/pg;[I)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
