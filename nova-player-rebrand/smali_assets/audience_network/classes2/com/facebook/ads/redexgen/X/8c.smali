.class public final synthetic Lcom/facebook/ads/redexgen/X/8c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8o;

.field public final synthetic A01:Z


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/8o;Z)V
    .locals 0

    .line 23207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Lcom/facebook/ads/redexgen/X/8o;

    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 23208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/8c;->A00:Lcom/facebook/ads/redexgen/X/8o;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/8c;->A01:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/8o;->A0J(Z)V

    return-void
.end method
