.class public final Lcom/facebook/ads/redexgen/X/Ee;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ef;->A03(Lcom/facebook/ads/redexgen/X/9h;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ef;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/9h;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ef;Lcom/facebook/ads/redexgen/X/9h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34828
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ee;->A00:Lcom/facebook/ads/redexgen/X/Ef;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/9h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 1

    .line 34829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/9h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9h;->A0O(Lcom/facebook/ads/redexgen/X/9h;)V

    .line 34830
    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 1

    .line 34831
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ee;->A01:Lcom/facebook/ads/redexgen/X/9h;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9h;->A0O(Lcom/facebook/ads/redexgen/X/9h;)V

    .line 34832
    return-void
.end method
