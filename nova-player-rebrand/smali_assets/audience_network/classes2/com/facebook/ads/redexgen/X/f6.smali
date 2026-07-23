.class public final Lcom/facebook/ads/redexgen/X/f6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/3r;->A02(Lcom/facebook/ads/redexgen/X/E3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3r;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82169
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/f6;->A00:Lcom/facebook/ads/redexgen/X/3r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .line 82170
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Dl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Dl;-><init>(Lcom/facebook/ads/redexgen/X/f6;I)V

    .line 82171
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82172
    return-void
.end method
