.class public final Lcom/facebook/ads/redexgen/X/Iy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/J0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StsdData"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/qI;

.field public final A03:[Lcom/facebook/ads/redexgen/X/JP;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 40998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40999
    new-array v0, p1, [Lcom/facebook/ads/redexgen/X/JP;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Iy;->A03:[Lcom/facebook/ads/redexgen/X/JP;

    .line 41000
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Iy;->A01:I

    .line 41001
    return-void
.end method
