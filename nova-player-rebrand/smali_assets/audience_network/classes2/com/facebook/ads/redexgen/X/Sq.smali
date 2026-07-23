.class public final Lcom/facebook/ads/redexgen/X/Sq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Sx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64365
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64366
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 64367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64368
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A02:Ljava/lang/String;

    .line 64369
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Ljava/lang/String;

    .line 64370
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:I

    .line 64371
    return-void
.end method
