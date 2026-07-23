.class public final Lcom/facebook/ads/redexgen/X/Ed;
.super Lcom/facebook/ads/redexgen/X/UN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/UN<",
        "Lcom/facebook/ads/redexgen/X/Dv;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4L;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34823
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Dv;)V
    .locals 3

    .line 34824
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0b()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ed;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0b()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0l(II)V

    .line 34825
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Dv;",
            ">;"
        }
    .end annotation

    .line 34826
    const-class v0, Lcom/facebook/ads/redexgen/X/Dv;

    return-object v0
.end method

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

    .line 34827
    check-cast p1, Lcom/facebook/ads/redexgen/X/Dv;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ed;->A00(Lcom/facebook/ads/redexgen/X/Dv;)V

    return-void
.end method
