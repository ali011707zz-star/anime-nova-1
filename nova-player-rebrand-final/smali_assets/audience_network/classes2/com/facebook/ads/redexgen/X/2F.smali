.class public final Lcom/facebook/ads/redexgen/X/2F;
.super Lcom/facebook/ads/redexgen/X/BD;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/q4;->A00(I)Lcom/facebook/ads/redexgen/X/2F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/BD<",
        "TK0;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/q4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/q4;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$expectedValuesPerKey"
        }
    .end annotation

    .line 8950
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2F;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iput p2, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/q4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/BD;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/BM;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/facebook/ads/redexgen/X/BM<",
            "TK;TV;>;"
        }
    .end annotation

    .line 8951
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2F;, "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/q4;

    .line 8952
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/q4;->A04()Ljava/util/Map;

    move-result-object v2

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/BE;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/BE;-><init>(I)V

    .line 8953
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/q8;->A00(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/ku;)Lcom/facebook/ads/redexgen/X/0t;

    move-result-object v0

    return-object v0
.end method
