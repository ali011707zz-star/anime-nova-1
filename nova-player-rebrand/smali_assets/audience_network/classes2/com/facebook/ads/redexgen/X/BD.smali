.class public abstract Lcom/facebook/ads/redexgen/X/BD;
.super Lcom/facebook/ads/redexgen/X/q5;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/q5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ListMultimapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/q5<",
        "TK0;TV0;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30326
    .local p0, "this":Lcom/facebook/ads/redexgen/X/BD;, "Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder<TK0;TV0;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/q5;-><init>(Lcom/facebook/ads/redexgen/X/BG;)V

    return-void
.end method


# virtual methods
.method public abstract A00()Lcom/facebook/ads/redexgen/X/BM;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/facebook/ads/redexgen/X/BM<",
            "TK;TV;>;"
        }
    .end annotation
.end method
