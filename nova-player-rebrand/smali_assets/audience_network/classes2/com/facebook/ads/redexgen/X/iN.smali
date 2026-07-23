.class public final Lcom/facebook/ads/redexgen/X/iN;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/OP;->A03(Lcom/facebook/ads/redexgen/X/ge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ge;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 0

    .line 86625
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iN;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 86626
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iN;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/OP;->A00(Lcom/facebook/ads/redexgen/X/ge;)Lcom/facebook/ads/redexgen/X/OO;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Us;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86627
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OO;->A0B(Z)V

    .line 86628
    return-void
.end method
