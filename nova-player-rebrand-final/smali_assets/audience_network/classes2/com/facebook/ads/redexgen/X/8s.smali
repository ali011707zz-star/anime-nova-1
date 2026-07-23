.class public final Lcom/facebook/ads/redexgen/X/8s;
.super Ljava/lang/Exception;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigurationException"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/qI;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 0

    .line 23322
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23323
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 23324
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;)V
    .locals 0

    .line 23325
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 23326
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/8s;->A00:Lcom/facebook/ads/redexgen/X/qI;

    .line 23327
    return-void
.end method
