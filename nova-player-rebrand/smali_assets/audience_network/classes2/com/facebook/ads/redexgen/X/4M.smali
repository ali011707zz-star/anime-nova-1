.class public final Lcom/facebook/ads/redexgen/X/4M;
.super Lcom/facebook/ads/redexgen/X/Dr;
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

    .line 11438
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Dr;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Ds;)V
    .locals 1

    .line 11439
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4M;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/EF;->A0f()V

    .line 11440
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

    .line 11441
    check-cast p1, Lcom/facebook/ads/redexgen/X/Ds;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4M;->A00(Lcom/facebook/ads/redexgen/X/Ds;)V

    return-void
.end method
