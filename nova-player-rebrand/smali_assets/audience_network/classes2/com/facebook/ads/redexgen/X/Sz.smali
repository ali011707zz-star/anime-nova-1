.class public final Lcom/facebook/ads/redexgen/X/Sz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/T0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdCacheDebugData"
.end annotation


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64830
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sz;->A01:Ljava/lang/String;

    .line 64831
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sz;->A03:Ljava/lang/String;

    .line 64832
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sz;->A02:Ljava/lang/String;

    .line 64833
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Sz;->A00:Ljava/lang/String;

    .line 64834
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Sz;->A04:Ljava/lang/String;

    .line 64835
    return-void
.end method
