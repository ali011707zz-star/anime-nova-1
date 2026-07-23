.class public final synthetic Lcom/facebook/ads/redexgen/X/nQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Eg;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9i;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:[I


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;[I)V
    .locals 0

    .line 100637
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nQ;->A00:Lcom/facebook/ads/redexgen/X/9i;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nQ;->A01:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/nQ;->A02:[I

    return-void
.end method


# virtual methods
.method public final A5F(ILcom/facebook/ads/redexgen/X/pg;[I)Ljava/util/List;
    .locals 6

    .line 100638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nQ;->A00:Lcom/facebook/ads/redexgen/X/9i;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/nQ;->A01:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/nQ;->A02:[I

    move-object v5, p3

    move-object v4, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9h;->A0G(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;[IILcom/facebook/ads/redexgen/X/pg;[I)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
