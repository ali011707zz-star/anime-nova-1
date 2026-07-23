.class public final Lcom/facebook/ads/redexgen/X/oH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/A6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A3C(Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/9s;
    .locals 3

    .line 102121
    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/qI;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    if-nez v0, :cond_0

    .line 102122
    const/4 v0, 0x0

    return-object v0

    .line 102123
    :cond_0
    const/4 v0, 0x1

    new-instance v2, Lcom/facebook/ads/redexgen/X/Ab;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Ab;-><init>(I)V

    const/16 v0, 0x1771

    new-instance v1, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/9q;-><init>(Ljava/lang/Throwable;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/oF;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/oF;-><init>(Lcom/facebook/ads/redexgen/X/9q;)V

    return-object v0
.end method

.method public final A7W(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 1

    .line 102124
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0O:Lcom/facebook/ads/androidx/media3/common/DrmInitData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic AH3(Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/A5;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/A3;->A00(Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/A1;Lcom/facebook/ads/redexgen/X/qI;)Lcom/facebook/ads/redexgen/X/A5;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic AH4()V
    .locals 0

    return-void
.end method

.method public final AJe(Landroid/os/Looper;Lcom/facebook/ads/redexgen/X/8O;)V
    .locals 0

    .line 102125
    return-void
.end method
