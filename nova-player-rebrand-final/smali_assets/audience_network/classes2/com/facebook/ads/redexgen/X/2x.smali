.class public final Lcom/facebook/ads/redexgen/X/2x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/2y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:Landroid/net/Uri;

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public A03:Ljava/util/UUID;

.field public A04:Z

.field public A05:Z

.field public A06:Z

.field public A07:[B


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9843
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2x;->A02:Ljava/util/Map;

    .line 9844
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2x;->A01:Ljava/util/List;

    .line 9845
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/2r;)V
    .locals 0

    .line 9846
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2x;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/2x;)Landroid/net/Uri;
    .locals 0

    .line 9847
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A00:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/List;
    .locals 0

    .line 9848
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A01:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/Map;
    .locals 0

    .line 9849
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A02:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/2x;)Ljava/util/UUID;
    .locals 0

    .line 9850
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A03:Ljava/util/UUID;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/2x;)Z
    .locals 0

    .line 9851
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A05:Z

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/2x;)Z
    .locals 0

    .line 9852
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A06:Z

    return p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/2x;)Z
    .locals 0

    .line 9853
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A04:Z

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/2x;)[B
    .locals 0

    .line 9854
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/2x;->A07:[B

    return-object p0
.end method


# virtual methods
.method public final A08()Lcom/facebook/ads/redexgen/X/2y;
    .locals 2

    .line 9855
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/2y;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/2y;-><init>(Lcom/facebook/ads/redexgen/X/2x;Lcom/facebook/ads/redexgen/X/2r;)V

    return-object v0
.end method
