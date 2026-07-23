.class public final Lcom/facebook/ads/redexgen/X/QL;
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
    name = "BypassLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/Xr;

.field public final A02:Lcom/facebook/ads/redexgen/X/Xr;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xr;ILcom/facebook/ads/redexgen/X/Xr;)V
    .locals 0

    .line 59967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    .line 59969
    iput p2, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:I

    .line 59970
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/QL;->A02:Lcom/facebook/ads/redexgen/X/Xr;

    .line 59971
    return-void
.end method


# virtual methods
.method public final AH8(Ljava/lang/String;)V
    .locals 1

    .line 59972
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:I

    if-lez v0, :cond_0

    .line 59973
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Xr;->AH8(Ljava/lang/String;)V

    .line 59974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A01:Lcom/facebook/ads/redexgen/X/Xr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xr;->flush()V

    .line 59975
    iget v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A00:I

    .line 59976
    :goto_0
    return-void

    .line 59977
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A02:Lcom/facebook/ads/redexgen/X/Xr;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Xr;->AH8(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .line 59978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QL;->A02:Lcom/facebook/ads/redexgen/X/Xr;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Xr;->flush()V

    .line 59979
    return-void
.end method
