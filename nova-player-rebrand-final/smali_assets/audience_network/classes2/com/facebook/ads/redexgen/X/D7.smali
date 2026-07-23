.class public final Lcom/facebook/ads/redexgen/X/D7;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListenerAndHandler"
.end annotation


# instance fields
.field public A00:Landroid/os/Handler;

.field public A01:Lcom/facebook/ads/redexgen/X/D9;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/D9;)V
    .locals 0

    .line 33454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33455
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/D7;->A00:Landroid/os/Handler;

    .line 33456
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/D7;->A01:Lcom/facebook/ads/redexgen/X/D9;

    .line 33457
    return-void
.end method
