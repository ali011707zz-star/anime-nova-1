.class public abstract Lcom/facebook/ads/redexgen/X/CE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/hW;


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9t(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31984
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31985
    return-void
.end method

.method public final A9u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31986
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31987
    return-void
.end method

.method public final AAY(I)Z
    .locals 1

    .line 31988
    iget v0, p0, Lcom/facebook/ads/redexgen/X/CE;->A00:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AJY(I)V
    .locals 0

    .line 31989
    iput p1, p0, Lcom/facebook/ads/redexgen/X/CE;->A00:I

    .line 31990
    return-void
.end method
