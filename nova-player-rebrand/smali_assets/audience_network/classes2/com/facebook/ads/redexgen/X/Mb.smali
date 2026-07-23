.class public final Lcom/facebook/ads/redexgen/X/Mb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XN;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameCountdownTimerListener"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 52171
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/Mm;)V
    .locals 0

    .line 52172
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    return-void
.end method


# virtual methods
.method public final ADS()V
    .locals 2

    .line 52173
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0T(Lcom/facebook/ads/redexgen/X/MW;)V

    .line 52174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0A(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52175
    return-void

    .line 52176
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0X(Lcom/facebook/ads/redexgen/X/MW;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0Y(Lcom/facebook/ads/redexgen/X/MW;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52177
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 52178
    :goto_0
    return-void

    .line 52179
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0V()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52180
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0

    .line 52181
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_0
.end method

.method public final AFV(F)V
    .locals 2

    .line 52182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0A()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    .line 52183
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0A()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 52184
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Mb;->A00:Lcom/facebook/ads/redexgen/X/MW;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/MW;->A0U:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 52185
    :cond_0
    return-void
.end method
