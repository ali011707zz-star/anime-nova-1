.class public abstract Lcom/facebook/ads/redexgen/X/0q;
.super Lcom/facebook/ads/redexgen/X/0z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewCompatApi19Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3642
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0z;-><init>()V

    return-void
.end method


# virtual methods
.method public final A0B(Landroid/view/View;I)V
    .locals 0

    .line 3643
    invoke-virtual {p1, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3644
    return-void
.end method

.method public final A0J(Landroid/view/View;)Z
    .locals 1

    .line 3645
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method
