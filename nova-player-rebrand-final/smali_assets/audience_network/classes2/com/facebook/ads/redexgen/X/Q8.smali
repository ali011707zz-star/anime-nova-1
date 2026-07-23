.class public final Lcom/facebook/ads/redexgen/X/Q8;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Q7;,
        Lcom/facebook/ads/redexgen/X/7Q;,
        Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeProviderCompat$AccessibilityNodeProviderJellyBeanImpl;,
        Lcom/facebook/ads/redexgen/X/hv;
    }
.end annotation


# static fields
.field public static final A01:Lcom/facebook/ads/redexgen/X/Q7;


# instance fields
.field public final A00:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1589
    new-instance v0, Lcom/facebook/ads/redexgen/X/7Q;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/7Q;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Lcom/facebook/ads/redexgen/X/Q7;

    .line 1590
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59879
    sget-object v0, Lcom/facebook/ads/redexgen/X/Q8;->A01:Lcom/facebook/ads/redexgen/X/Q7;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/Q7;->ACb(Lcom/facebook/ads/redexgen/X/Q8;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Ljava/lang/Object;

    .line 59880
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 59881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59882
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Ljava/lang/Object;

    .line 59883
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 59884
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/Q6;
    .locals 1

    .line 59885
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A02()Ljava/lang/Object;
    .locals 1

    .line 59886
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q8;->A00:Ljava/lang/Object;

    return-object v0
.end method

.method public final A03(Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Q6;",
            ">;"
        }
    .end annotation

    .line 59887
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A04(IILandroid/os/Bundle;)Z
    .locals 1

    .line 59888
    const/4 v0, 0x0

    return v0
.end method
