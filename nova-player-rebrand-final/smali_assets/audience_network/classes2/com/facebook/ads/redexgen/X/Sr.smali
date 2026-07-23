.class public final Lcom/facebook/ads/redexgen/X/Sr;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WD;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WA;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/WD;

.field public final synthetic A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WD;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 64372
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sr;->A02:Lcom/facebook/ads/redexgen/X/WD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sr;->A03:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:J

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Sr;->A01:Lcom/facebook/ads/redexgen/X/WA;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 64373
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sr;->A02:Lcom/facebook/ads/redexgen/X/WD;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sr;->A03:Ljava/lang/String;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Sr;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sr;->A01:Lcom/facebook/ads/redexgen/X/WA;

    invoke-static {v4, v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/WD;->A0J(Lcom/facebook/ads/redexgen/X/WD;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/WA;)V

    .line 64374
    return-void
.end method
