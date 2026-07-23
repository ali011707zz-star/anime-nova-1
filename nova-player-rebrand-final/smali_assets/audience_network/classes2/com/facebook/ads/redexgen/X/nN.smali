.class public final synthetic Lcom/facebook/ads/redexgen/X/nN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Eg;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9i;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;)V
    .locals 0

    .line 100631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nN;->A00:Lcom/facebook/ads/redexgen/X/9i;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nN;->A01:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5F(ILcom/facebook/ads/redexgen/X/pg;[I)Ljava/util/List;
    .locals 2

    .line 100632
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nN;->A00:Lcom/facebook/ads/redexgen/X/9i;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nN;->A01:Ljava/lang/String;

    invoke-static {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9h;->A0F(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/pg;[I)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
