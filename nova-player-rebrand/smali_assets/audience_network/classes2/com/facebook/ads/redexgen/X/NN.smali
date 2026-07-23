.class public final Lcom/facebook/ads/redexgen/X/NN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final serialVersionUID:J = 0x7eca759d791ce105L


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Na;

.field public final A01:Lcom/facebook/ads/redexgen/X/Na;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/Na;)V
    .locals 0

    .line 53328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53329
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NN;->A01:Lcom/facebook/ads/redexgen/X/Na;

    .line 53330
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NN;->A00:Lcom/facebook/ads/redexgen/X/Na;

    .line 53331
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 53332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NN;->A00:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 53333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NN;->A01:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method
