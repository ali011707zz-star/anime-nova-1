.class public final Lcom/facebook/ads/redexgen/X/MK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TADataSpec"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51587
    const-string v1, ""

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/MK;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 51588
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51590
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MK;->A02:Ljava/lang/String;

    .line 51591
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/MK;->A03:Z

    .line 51592
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MK;->A00:Ljava/lang/String;

    .line 51593
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MK;->A01:Ljava/lang/String;

    .line 51594
    return-void
.end method
