.class public final synthetic Lcom/facebook/ads/redexgen/X/9A;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Landroid/media/AudioTrack;

.field public final synthetic A01:Landroid/os/Handler;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/48;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/8r;

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/8v;


# direct methods
.method public synthetic constructor <init>(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8v;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8r;Lcom/facebook/ads/redexgen/X/48;)V
    .locals 0

    .line 23865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9A;->A00:Landroid/media/AudioTrack;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9A;->A04:Lcom/facebook/ads/redexgen/X/8v;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9A;->A01:Landroid/os/Handler;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9A;->A03:Lcom/facebook/ads/redexgen/X/8r;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/9A;->A02:Lcom/facebook/ads/redexgen/X/48;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 23866
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9A;->A00:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9A;->A04:Lcom/facebook/ads/redexgen/X/8v;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9A;->A01:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9A;->A03:Lcom/facebook/ads/redexgen/X/8r;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9A;->A02:Lcom/facebook/ads/redexgen/X/48;

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0a(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8v;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8r;Lcom/facebook/ads/redexgen/X/48;)V

    return-void
.end method
