.class public final Lcom/facebook/ads/redexgen/X/EK;
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
        "Lcom/facebook/ads/redexgen/X/Dy;",
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

    .line 34721
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/Dy;)V
    .locals 3

    .line 34722
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/EK;->A00:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dy;->A00()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Dy;->A01()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EF;->A0l(II)V

    .line 34723
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/Dy;",
            ">;"
        }
    .end annotation

    .line 34724
    const-class v0, Lcom/facebook/ads/redexgen/X/Dy;

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

    .line 34725
    check-cast p1, Lcom/facebook/ads/redexgen/X/Dy;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/EK;->A00(Lcom/facebook/ads/redexgen/X/Dy;)V

    return-void
.end method
