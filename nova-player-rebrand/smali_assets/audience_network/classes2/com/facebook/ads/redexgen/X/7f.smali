.class public final Lcom/facebook/ads/redexgen/X/7f;
.super Lcom/facebook/ads/redexgen/X/iv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/iu;->A04()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ju;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/iu;

.field public final synthetic A02:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/iu;Ljava/util/List;Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 21429
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7f;->A01:Lcom/facebook/ads/redexgen/X/iu;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/7f;->A02:Ljava/util/List;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/ju;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iv;-><init>()V

    return-void
.end method


# virtual methods
.method public final AEw(Lcom/facebook/ads/redexgen/X/ju;)V
    .locals 2

    .line 21430
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7f;->A02:Ljava/util/List;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7f;->A00:Lcom/facebook/ads/redexgen/X/ju;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21431
    return-void
.end method
