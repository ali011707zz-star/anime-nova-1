.class public final Lcom/facebook/ads/redexgen/X/pK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4W;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/pJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemMessage"
.end annotation


# instance fields
.field public A00:Landroid/os/Message;

.field public A01:Lcom/facebook/ads/redexgen/X/pJ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/51;)V
    .locals 0

    .line 104108
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pK;-><init>()V

    return-void
.end method

.method private A00()V
    .locals 1

    .line 104109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pK;->A00:Landroid/os/Message;

    .line 104110
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/pK;->A01:Lcom/facebook/ads/redexgen/X/pJ;

    .line 104111
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/pJ;->A02(Lcom/facebook/ads/redexgen/X/pK;)V

    .line 104112
    return-void
.end method


# virtual methods
.method public final A01(Landroid/os/Message;Lcom/facebook/ads/redexgen/X/pJ;)Lcom/facebook/ads/redexgen/X/pK;
    .locals 0

    .line 104113
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/pK;->A00:Landroid/os/Message;

    .line 104114
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/pK;->A01:Lcom/facebook/ads/redexgen/X/pJ;

    .line 104115
    return-object p0
.end method

.method public final A02()V
    .locals 1

    .line 104116
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pK;->A00:Landroid/os/Message;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104117
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pK;->A00()V

    .line 104118
    return-void
.end method

.method public final A03(Landroid/os/Handler;)Z
    .locals 1

    .line 104119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/pK;->A00:Landroid/os/Message;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result v0

    .line 104120
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/pK;->A00()V

    .line 104121
    return v0
.end method
