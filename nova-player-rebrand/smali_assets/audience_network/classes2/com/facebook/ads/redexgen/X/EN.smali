.class public final Lcom/facebook/ads/redexgen/X/EN;
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
        "Lcom/facebook/ads/redexgen/X/E3;",
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

    .line 34749
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EN;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E3;)V
    .locals 2

    .line 34750
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EN;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0D(Lcom/facebook/ads/redexgen/X/4L;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34751
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/EN;->A00:Lcom/facebook/ads/redexgen/X/4L;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4L;->A0E(Lcom/facebook/ads/redexgen/X/4L;Z)Z

    .line 34752
    return-void

    .line 34753
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/EN;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0d()V

    .line 34754
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/E3;",
            ">;"
        }
    .end annotation

    .line 34755
    const-class v0, Lcom/facebook/ads/redexgen/X/E3;

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

    .line 34756
    check-cast p1, Lcom/facebook/ads/redexgen/X/E3;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EN;->A00(Lcom/facebook/ads/redexgen/X/E3;)V

    return-void
.end method
