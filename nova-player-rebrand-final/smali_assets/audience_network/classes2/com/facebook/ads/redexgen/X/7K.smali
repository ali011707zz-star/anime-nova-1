.class public final Lcom/facebook/ads/redexgen/X/7K;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rz;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 18989
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 1

    .line 18990
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7K;->A00:Lcom/facebook/ads/redexgen/X/Rz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rz;->A00(Lcom/facebook/ads/redexgen/X/Rz;)Lcom/facebook/ads/MediaViewVideoRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->onPrepared()V

    .line 18991
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/UL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 18992
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7K;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
