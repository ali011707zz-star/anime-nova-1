.class public final synthetic Lcom/facebook/ads/redexgen/X/4Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4d;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/4d;)V
    .locals 0

    .line 12257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4Z;->A00:Lcom/facebook/ads/redexgen/X/4d;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 12258
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Z;->A00:Lcom/facebook/ads/redexgen/X/4d;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/4d;->A06(Lcom/facebook/ads/redexgen/X/4d;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
