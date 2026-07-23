.class public final Lcom/facebook/ads/redexgen/X/fd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Cz;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Cz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82578
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final canPause()Z
    .locals 1

    .line 82579
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .locals 1

    .line 82580
    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .locals 1

    .line 82581
    const/4 v0, 0x1

    return v0
.end method

.method public final getAudioSessionId()I
    .locals 1

    .line 82582
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A04()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBufferPercentage()I
    .locals 1

    .line 82583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A05()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentPosition()I
    .locals 1

    .line 82584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cz;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .line 82585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Cz;->getDuration()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 1

    .line 82586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A01(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fX;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final pause()V
    .locals 1

    .line 82587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A02(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A02(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fn;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fn;->AEo()V

    .line 82589
    :cond_0
    return-void
.end method

.method public final seekTo(I)V
    .locals 1

    .line 82590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Cz;->seekTo(I)V

    .line 82591
    return-void
.end method

.method public final start()V
    .locals 1

    .line 82592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A02(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/fd;->A00:Lcom/facebook/ads/redexgen/X/Cz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Cz;->A02(Lcom/facebook/ads/redexgen/X/Cz;)Lcom/facebook/ads/redexgen/X/fn;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/fn;->AEp()V

    .line 82594
    :cond_0
    return-void
.end method
