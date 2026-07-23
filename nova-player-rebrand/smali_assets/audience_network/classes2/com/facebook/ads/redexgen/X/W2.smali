.class public final Lcom/facebook/ads/redexgen/X/W2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/b8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Vz;->A0Q(Lcom/facebook/ads/redexgen/X/UK;Lcom/facebook/ads/redexgen/X/VV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Vz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Vz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 70116
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AE7(Lcom/facebook/ads/redexgen/X/b7;)V
    .locals 3

    .line 70117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0B(Lcom/facebook/ads/redexgen/X/Vz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0A(Lcom/facebook/ads/redexgen/X/Vz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A06(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W2;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A06(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/b7;->A00()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v1, v2}, Lcom/facebook/ads/redexgen/X/VV;->AFB(Z)V

    .line 70120
    :cond_0
    return-void

    .line 70121
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 70122
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
