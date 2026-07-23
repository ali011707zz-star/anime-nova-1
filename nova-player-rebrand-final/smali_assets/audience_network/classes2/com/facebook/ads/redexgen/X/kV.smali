.class public final Lcom/facebook/ads/redexgen/X/kV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5V;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/kU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/MP;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 90393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90394
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    .line 90395
    const/16 v0, 0x5000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    .line 90396
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/MP;)Lcom/facebook/ads/redexgen/X/kV;
    .locals 0

    .line 90397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kV;->A02:Lcom/facebook/ads/redexgen/X/MP;

    .line 90398
    return-object p0
.end method

.method public final A5H()Lcom/facebook/ads/redexgen/X/kU;
    .locals 5

    .line 90399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kV;->A02:Lcom/facebook/ads/redexgen/X/MP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/MP;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/kV;->A01:J

    iget v1, p0, Lcom/facebook/ads/redexgen/X/kV;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/kU;

    invoke-direct {v0, v4, v2, v3, v1}, Lcom/facebook/ads/redexgen/X/kU;-><init>(Lcom/facebook/ads/redexgen/X/MP;JI)V

    return-object v0
.end method
