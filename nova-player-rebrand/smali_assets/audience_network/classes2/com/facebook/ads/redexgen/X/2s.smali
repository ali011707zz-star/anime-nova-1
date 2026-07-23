.class public final Lcom/facebook/ads/redexgen/X/2s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ol;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/fX;->A0H(Lcom/facebook/ads/redexgen/X/fW;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/fW;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/fX;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/fX;Lcom/facebook/ads/redexgen/X/fW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9774
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/2s;->A01:Lcom/facebook/ads/redexgen/X/fX;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Lcom/facebook/ads/redexgen/X/fW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGa(IIIF)V
    .locals 1

    .line 9775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2s;->A00:Lcom/facebook/ads/redexgen/X/fW;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/fW;->AGa(IIIF)V

    .line 9776
    return-void
.end method
