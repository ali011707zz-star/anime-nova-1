.class public final synthetic Lcom/facebook/ads/redexgen/X/aS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aW;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/aW;)V
    .locals 0

    .line 76515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aS;->A00:Lcom/facebook/ads/redexgen/X/aW;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10

    .line 76516
    move-object v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/aS;->A00:Lcom/facebook/ads/redexgen/X/aW;

    move/from16 v9, p9

    move/from16 v8, p8

    move/from16 v7, p7

    move/from16 v6, p6

    move v5, p5

    move v4, p4

    move v3, p3

    move v2, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/aW;->A0D(Landroid/view/View;IIIIIIII)V

    return-void
.end method
