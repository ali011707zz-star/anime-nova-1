.class public final Lcom/facebook/ads/redexgen/X/Db;
.super Lcom/facebook/ads/redexgen/X/UN;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3S;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/UN<",
        "Lcom/facebook/ads/redexgen/X/4K;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3S;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/3S;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 34048
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Db;->A00:Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UN;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 2

    .line 34049
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Db;->A00:Lcom/facebook/ads/redexgen/X/3S;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3S;->setVisibility(I)V

    .line 34050
    return-void
.end method


# virtual methods
.method public final A01()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/4K;",
            ">;"
        }
    .end annotation

    .line 34051
    const-class v0, Lcom/facebook/ads/redexgen/X/4K;

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

    .line 34052
    check-cast p1, Lcom/facebook/ads/redexgen/X/4K;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Db;->A00(Lcom/facebook/ads/redexgen/X/4K;)V

    return-void
.end method
