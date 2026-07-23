.class public final Lcom/facebook/ads/redexgen/X/WY;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WW;-><init>(Lcom/facebook/ads/redexgen/X/ge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71128
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:Lcom/facebook/ads/redexgen/X/WW;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 71129
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:Lcom/facebook/ads/redexgen/X/WW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WW;->A00(Lcom/facebook/ads/redexgen/X/WW;)Lcom/facebook/ads/redexgen/X/V9;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/V9;->A61()V

    .line 71130
    return-void
.end method
