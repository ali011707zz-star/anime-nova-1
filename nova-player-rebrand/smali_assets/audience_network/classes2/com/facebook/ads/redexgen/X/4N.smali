.class public final Lcom/facebook/ads/redexgen/X/4N;
.super Lcom/facebook/ads/redexgen/X/E0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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

    .line 11442
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/E0;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/E1;)V
    .locals 2

    .line 11443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4L;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0A(Lcom/facebook/ads/redexgen/X/4L;)Lcom/facebook/ads/redexgen/X/Ek;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getDuration()I

    move-result v0

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4L;->A00:I

    .line 11444
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

    .line 11445
    check-cast p1, Lcom/facebook/ads/redexgen/X/E1;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4N;->A00(Lcom/facebook/ads/redexgen/X/E1;)V

    return-void
.end method
