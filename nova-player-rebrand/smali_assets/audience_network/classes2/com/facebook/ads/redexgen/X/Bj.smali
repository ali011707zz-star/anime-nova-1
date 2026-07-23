.class public final Lcom/facebook/ads/redexgen/X/Bj;
.super Lcom/facebook/ads/redexgen/X/ne;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/nh;->A0f()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/nh<",
        "TK;TV;>.Itr<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/nh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/nh;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31160
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bj;, "Lcom/google/common/collect/CompactHashMap$3;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Lcom/facebook/ads/redexgen/X/nh;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ne;-><init>(Lcom/facebook/ads/redexgen/X/nh;Lcom/facebook/ads/redexgen/X/Bm;)V

    return-void
.end method


# virtual methods
.method public final A03(I)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 31161
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bj;, "Lcom/google/common/collect/CompactHashMap$3;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Lcom/facebook/ads/redexgen/X/nh;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/nh;->A0I(Lcom/facebook/ads/redexgen/X/nh;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
