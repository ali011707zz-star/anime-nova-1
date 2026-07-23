.class public final Lcom/facebook/ads/redexgen/X/1U;
.super Lcom/facebook/ads/redexgen/X/8P;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaOutputBuffer"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/64;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/64<",
            "Lcom/facebook/ads/redexgen/X/1U;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/64;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/64<",
            "Lcom/facebook/ads/redexgen/X/1U;",
            ">;)V"
        }
    .end annotation

    .line 6144
    .local p1, "owner":Lcom/facebook/ads/redexgen/X/64;, "Lcom/facebook/ads/androidx/media3/decoder/DecoderOutputBuffer$Owner<Lcom/facebook/ads/androidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8P;-><init>()V

    .line 6145
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1U;->A00:Lcom/facebook/ads/redexgen/X/64;

    .line 6146
    return-void
.end method


# virtual methods
.method public final A0B()V
    .locals 1

    .line 6147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1U;->A00:Lcom/facebook/ads/redexgen/X/64;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/64;->AHj(Lcom/facebook/ads/redexgen/X/oz;)V

    .line 6148
    return-void
.end method
