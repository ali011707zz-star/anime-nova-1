.class public final Lcom/facebook/ads/redexgen/X/Rq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/b6;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1630
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kWMETALBgXQPxa1caUNWOxECFuDqqQMg"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ZdkMlJfyQLC9xkOOBWIiDwjfHp6c9jbv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0ZcfP2jVUcrv9OHIQZTLnU8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "f1ui83cs7IfjD0PNLw4msBb2GPSJERBF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Csxj5aYvqiT2vPBDwP7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SUYUZZDjraqMGfRe"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xuktTTnzvvF5Ho58lD7oBLq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/b6;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 63132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:Lcom/facebook/ads/redexgen/X/b6;

    .line 63134
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Landroid/widget/RelativeLayout;

    .line 63135
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 63136
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:Lcom/facebook/ads/redexgen/X/b6;

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 63137
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:Lcom/facebook/ads/redexgen/X/b6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Landroid/widget/RelativeLayout;

    .line 63138
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Rq;->A00:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rq;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    .line 63139
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/b6;->setBounds(IIII)V

    .line 63140
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:Lcom/facebook/ads/redexgen/X/b6;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rq;->A01:Lcom/facebook/ads/redexgen/X/b6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b6;->A0E()Z

    move-result v0

    xor-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b6;->A0D(Z)V

    .line 63141
    :cond_0
    return v6

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
