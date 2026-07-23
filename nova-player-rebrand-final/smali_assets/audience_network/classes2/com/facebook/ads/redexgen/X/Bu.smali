.class public final Lcom/facebook/ads/redexgen/X/Bu;
.super Lcom/facebook/ads/redexgen/X/lm;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/2L;->A0C()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/2L<",
        "TK;TV;>.Itr<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/2L;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 31308
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bu;, "Lcom/google/common/collect/AbstractMapBasedMultimap$1;"
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bu;->A00:Lcom/facebook/ads/redexgen/X/2L;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/lm;-><init>(Lcom/facebook/ads/redexgen/X/2L;)V

    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 31309
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bu;, "Lcom/google/common/collect/AbstractMapBasedMultimap$1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-object p2
.end method
