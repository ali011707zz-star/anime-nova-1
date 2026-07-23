.class public final Lcom/facebook/ads/redexgen/X/QI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Xr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Xt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Xr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xr;I)V
    .locals 0

    .line 59924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59925
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QI;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    .line 59926
    iput p2, p0, Lcom/facebook/ads/redexgen/X/QI;->A00:I

    .line 59927
    return-void
.end method


# virtual methods
.method public final AH8(Ljava/lang/String;)V
    .locals 1

    .line 59928
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QI;->A00:I

    if-lez v0, :cond_0

    .line 59929
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QI;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Xr;->AH8(Ljava/lang/String;)V

    .line 59930
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QI;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QI;->A00:I

    .line 59931
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 1

    .line 59932
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QI;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xr;->flush()V

    .line 59933
    return-void
.end method
