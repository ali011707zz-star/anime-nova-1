.class public final Lcom/facebook/ads/redexgen/X/CW;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/CX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NetworkCallback"
.end annotation


# instance fields
.field public A00:Z

.field public A01:Z

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/CX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/CX;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 32115
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/CX;Lcom/facebook/ads/redexgen/X/CR;)V
    .locals 0

    .line 32116
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/CW;-><init>(Lcom/facebook/ads/redexgen/X/CX;)V

    return-void
.end method

.method private A00()V
    .locals 2

    .line 32117
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(Lcom/facebook/ads/redexgen/X/CX;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/CU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/CU;-><init>(Lcom/facebook/ads/redexgen/X/CW;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32118
    return-void
.end method

.method private A01()V
    .locals 2

    .line 32119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A00(Lcom/facebook/ads/redexgen/X/CX;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/CV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/CV;-><init>(Lcom/facebook/ads/redexgen/X/CW;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32120
    return-void
.end method


# virtual methods
.method public final synthetic A02()V
    .locals 1

    .line 32121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A01(Lcom/facebook/ads/redexgen/X/CX;)Lcom/facebook/ads/redexgen/X/CW;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A07(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 32123
    :cond_0
    return-void
.end method

.method public final synthetic A03()V
    .locals 1

    .line 32124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A01(Lcom/facebook/ads/redexgen/X/CX;)Lcom/facebook/ads/redexgen/X/CW;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A02:Lcom/facebook/ads/redexgen/X/CX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/CX;->A08(Lcom/facebook/ads/redexgen/X/CX;)V

    .line 32126
    :cond_0
    return-void
.end method

.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 32127
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CW;->A00()V

    .line 32128
    return-void
.end method

.method public final onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    .line 32129
    if-nez p2, :cond_0

    .line 32130
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CW;->A01()V

    .line 32131
    :cond_0
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 32132
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 32133
    .local v0, "networkValidated":Z
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:Z

    if-eq v0, v1, :cond_2

    .line 32134
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/CW;->A01:Z

    .line 32135
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/CW;->A00:Z

    .line 32136
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CW;->A00()V

    .line 32137
    :cond_1
    :goto_0
    return-void

    .line 32138
    :cond_2
    if-eqz v1, :cond_1

    .line 32139
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CW;->A01()V

    goto :goto_0
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    .line 32140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/CW;->A00()V

    .line 32141
    return-void
.end method
