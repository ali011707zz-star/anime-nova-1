.class public final Lcom/facebook/ads/redexgen/X/Ar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/rY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/rY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultClipRegionsProvider"
.end annotation


# instance fields
.field public final A00:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/rZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final A6i(I)Lcom/facebook/ads/redexgen/X/rZ;
    .locals 1

    .line 29472
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/facebook/ads/redexgen/X/rZ;",
            ">;"
        }
    .end annotation

    .line 29473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 29474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ar;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
