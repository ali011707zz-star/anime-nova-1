.class public final Lcom/facebook/ads/redexgen/X/S9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/SA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeBannerImageLoadTaskParams"
.end annotation


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S9;->A01:Ljava/lang/String;

    .line 63609
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Ljava/lang/String;

    .line 63610
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/h4;)V
    .locals 0

    .line 63611
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/S9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
