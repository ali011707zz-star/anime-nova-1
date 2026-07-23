.class public final Lcom/facebook/ads/redexgen/X/hH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/hC;->A0W(Lcom/facebook/ads/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/hC;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/UK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/hC;Lcom/facebook/ads/redexgen/X/UK;)V
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

    .line 84413
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hH;->A00:Lcom/facebook/ads/redexgen/X/hC;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/hH;->A01:Lcom/facebook/ads/redexgen/X/UK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADM()V
    .locals 2

    .line 84414
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/hH;->A01:Lcom/facebook/ads/redexgen/X/UK;

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/UK;->A1o(ZZ)V

    .line 84415
    return-void
.end method
