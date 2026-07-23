.class public final Lcom/facebook/ads/redexgen/X/rP;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/rN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "StateType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/rN;

.field public A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/rS<",
            "TModelType;TStateType;>;>;"
        }
    .end annotation
.end field

.field public A02:Z

.field public final A03:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field public final A04:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TStateType;"
        }
    .end annotation
.end field

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;TStateType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106316
    .local p0, "this":Lcom/facebook/ads/redexgen/X/rP;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p1, "model":Ljava/lang/Object;, "TModelType;"
    .local p2, "state":Ljava/lang/Object;, "TStateType;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rP;->A01:Ljava/util/List;

    .line 106318
    sget-object v0, Lcom/facebook/ads/redexgen/X/rN;->A0B:Lcom/facebook/ads/redexgen/X/rN;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rP;->A00:Lcom/facebook/ads/redexgen/X/rN;

    .line 106319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/rP;->A02:Z

    .line 106320
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/rP;->A03:Ljava/lang/Object;

    .line 106321
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/rP;->A04:Ljava/lang/Object;

    .line 106322
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/rP;->A06:Ljava/lang/String;

    .line 106323
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/rP;->A05:Ljava/lang/String;

    .line 106324
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/rP;)Lcom/facebook/ads/redexgen/X/rN;
    .locals 0

    .line 106325
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rP;->A00:Lcom/facebook/ads/redexgen/X/rN;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/rP;)Ljava/lang/Object;
    .locals 0

    .line 106326
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rP;->A03:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/rP;)Ljava/lang/Object;
    .locals 0

    .line 106327
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rP;->A04:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/rP;)Ljava/lang/String;
    .locals 0

    .line 106328
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rP;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/rP;)Ljava/util/List;
    .locals 0

    .line 106329
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/rP;->A01:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/rP;)Z
    .locals 0

    .line 106330
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/rP;->A02:Z

    return p0
.end method


# virtual methods
.method public final A06(Lcom/facebook/ads/redexgen/X/rS;)Lcom/facebook/ads/redexgen/X/rP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/rS<",
            "TModelType;TStateType;>;)",
            "Lcom/facebook/ads/redexgen/X/rP<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 106331
    .local p0, "this":Lcom/facebook/ads/redexgen/X/rP;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    .local p1, "viewpointAction":Lcom/facebook/ads/redexgen/X/rS;, "Lcom/instagram/common/viewpoint/core/ViewpointAction<TModelType;TStateType;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rP;->A01:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/rP;->A01:Ljava/util/List;

    .line 106333
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/rP;->A01:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106334
    return-object p0
.end method

.method public final A07()Lcom/facebook/ads/redexgen/X/rN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/ads/redexgen/X/rN<",
            "TModelType;TStateType;>;"
        }
    .end annotation

    .line 106335
    .local p0, "this":Lcom/facebook/ads/redexgen/X/rP;, "Lcom/instagram/common/viewpoint/core/ViewpointData$Builder<TModelType;TStateType;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/rN;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/rN;-><init>(Lcom/facebook/ads/redexgen/X/rP;)V

    return-object v0
.end method
