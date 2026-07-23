.class public final Lcom/facebook/ads/redexgen/X/gl;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ss;-><init>(Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ss;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/St;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/Sx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/St;)V
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

    .line 83481
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/gl;->A00:Lcom/facebook/ads/redexgen/X/Ss;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/gl;->A02:Lcom/facebook/ads/redexgen/X/Sx;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/gl;->A01:Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 83482
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/gl;->A00:Lcom/facebook/ads/redexgen/X/Ss;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/gl;->A01:Lcom/facebook/ads/redexgen/X/St;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ss;->A02(Lcom/facebook/ads/redexgen/X/Ss;Lcom/facebook/ads/redexgen/X/St;)V

    .line 83483
    return-void
.end method
