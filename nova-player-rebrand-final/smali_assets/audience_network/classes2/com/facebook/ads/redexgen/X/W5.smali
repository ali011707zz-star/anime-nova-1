.class public final Lcom/facebook/ads/redexgen/X/W5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vz;
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

    .line 70150
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGT()V
    .locals 2

    .line 70151
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0A(Lcom/facebook/ads/redexgen/X/Vz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70152
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A06(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70153
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A06(Lcom/facebook/ads/redexgen/X/Vz;)Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:Lcom/facebook/ads/redexgen/X/Vz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Vz;->A0B(Lcom/facebook/ads/redexgen/X/Vz;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VV;->AFB(Z)V

    .line 70154
    :cond_0
    return-void
.end method
