.class public final Lcom/facebook/ads/redexgen/X/4e;
.super Lcom/facebook/ads/redexgen/X/E8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4V;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4V;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 12312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4e;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E8;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E9;)V
    .locals 2

    .line 12313
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/du;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/du;-><init>(Lcom/facebook/ads/redexgen/X/4e;)V

    .line 12314
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12315
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12316
    check-cast p1, Lcom/facebook/ads/redexgen/X/E9;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4e;->A00(Lcom/facebook/ads/redexgen/X/E9;)V

    return-void
.end method
