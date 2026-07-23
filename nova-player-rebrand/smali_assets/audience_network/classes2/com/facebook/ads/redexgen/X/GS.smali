.class public final Lcom/facebook/ads/redexgen/X/GS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4V;->getPackageInstallListener()Lcom/facebook/ads/redexgen/X/Xh;
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

    .line 37137
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/GS;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AF5(Ljava/lang/String;)V
    .locals 4

    .line 37138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/GS;->A00:Lcom/facebook/ads/redexgen/X/4V;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4V;->A04(Lcom/facebook/ads/redexgen/X/4V;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/ds;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/ds;-><init>(Lcom/facebook/ads/redexgen/X/GS;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37139
    return-void
.end method

.method public final AF6(Ljava/lang/String;)V
    .locals 2

    .line 37140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/GS;->A00:Lcom/facebook/ads/redexgen/X/4V;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0c:Lcom/facebook/ads/redexgen/X/VH;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4V;->A0I(Lcom/facebook/ads/redexgen/X/4V;Lcom/facebook/ads/redexgen/X/VH;)V

    .line 37141
    return-void
.end method
