.class public final Lcom/facebook/ads/redexgen/X/WO;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/VL;->A09(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T8;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V
    .locals 0

    .line 70602
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Lcom/facebook/ads/redexgen/X/T8;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WO;->A01:Ljava/lang/String;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 70603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WO;->A00:Lcom/facebook/ads/redexgen/X/T8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WO;->A01:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/VL;->A08(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;)V

    .line 70604
    return-void
.end method
