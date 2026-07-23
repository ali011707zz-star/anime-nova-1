.class public final synthetic Lcom/facebook/ads/redexgen/X/4Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/4a;

.field public final synthetic A02:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/4a;)V
    .locals 0

    .line 12255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4Y;->A02:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Lcom/facebook/ads/redexgen/X/4a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 12256
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4Y;->A02:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/4Y;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4Y;->A01:Lcom/facebook/ads/redexgen/X/4a;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4d;->A04(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/facebook/ads/redexgen/X/4a;)V

    return-void
.end method
