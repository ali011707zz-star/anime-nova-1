.class public final Lcom/facebook/ads/redexgen/X/Vx;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/UK;->repair(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/UK;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69904
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 69905
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vx;->A00:Lcom/facebook/ads/redexgen/X/UK;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UK;->unregisterView()V

    .line 69906
    return-void
.end method
