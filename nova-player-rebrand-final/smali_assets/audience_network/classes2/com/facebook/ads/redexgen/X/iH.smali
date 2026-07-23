.class public final Lcom/facebook/ads/redexgen/X/iH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OR;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7X;->A00(Lcom/facebook/ads/redexgen/X/iI;)Lcom/facebook/ads/redexgen/X/iH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/iI;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iI;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86527
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/iI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5S(Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/ik;Lcom/facebook/ads/redexgen/X/OL;)Lcom/facebook/ads/redexgen/X/OQ;
    .locals 7

    .line 86528
    new-instance v1, Lcom/facebook/ads/redexgen/X/iM;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/iI;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/iH;->A00:Lcom/facebook/ads/redexgen/X/iI;

    move-object v6, p3

    move-object v5, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/iM;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/iI;Lcom/facebook/ads/redexgen/X/OE;Lcom/facebook/ads/redexgen/X/ik;Lcom/facebook/ads/redexgen/X/OL;)V

    return-object v1
.end method
