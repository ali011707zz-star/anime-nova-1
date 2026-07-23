.class public final Lcom/facebook/ads/redexgen/X/iI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/T5;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/AdExperienceType;

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/RewardedVideoAdListener;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Z

.field public A09:Lcom/facebook/ads/Ad;

.field public A0A:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/Ad;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0C:Lcom/facebook/ads/redexgen/X/U3;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/Ad;Lcom/facebook/ads/redexgen/X/U3;)V
    .locals 2

    .line 86529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86530
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A00:I

    .line 86531
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    .line 86532
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/iI;->A0D:Ljava/lang/String;

    .line 86533
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/iI;->A09:Lcom/facebook/ads/Ad;

    .line 86534
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A0A:Ljava/lang/ref/WeakReference;

    .line 86535
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/iI;->A0C:Lcom/facebook/ads/redexgen/X/U3;

    .line 86536
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A01:J

    .line 86537
    invoke-virtual {p1, p0}, Lcom/facebook/ads/redexgen/X/gi;->A0N(Lcom/facebook/ads/redexgen/X/T5;)V

    .line 86538
    return-void
.end method

.method private final A00()Lcom/facebook/ads/RewardedVideoAdListener;
    .locals 1

    .line 86539
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A04:Lcom/facebook/ads/RewardedVideoAdListener;

    return-object v0
.end method


# virtual methods
.method public final A01()Lcom/facebook/ads/redexgen/X/gi;
    .locals 1

    .line 86540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/Ad;)V
    .locals 1

    .line 86541
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A0B:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86542
    return-void

    .line 86543
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iI;->A09:Lcom/facebook/ads/Ad;

    .line 86544
    return-void
.end method

.method public final A6k()Lcom/facebook/ads/Ad;
    .locals 1

    .line 86545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A09:Lcom/facebook/ads/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A09:Lcom/facebook/ads/Ad;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iI;->A0A:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/Ad;

    goto :goto_0
.end method

.method public final bridge synthetic A6o()Lcom/facebook/ads/AdListener;
    .locals 1

    .line 86546
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iI;->A00()Lcom/facebook/ads/RewardedVideoAdListener;

    move-result-object v0

    return-object v0
.end method
