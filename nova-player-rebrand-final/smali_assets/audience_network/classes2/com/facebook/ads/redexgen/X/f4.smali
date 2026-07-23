.class public final Lcom/facebook/ads/redexgen/X/f4;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TX;->A0C(Lcom/facebook/ads/redexgen/X/ge;Lcom/facebook/ads/redexgen/X/TW;Lcom/facebook/ads/redexgen/X/TV;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ge;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ge;)V
    .locals 0

    .line 82124
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/f4;->A00:Lcom/facebook/ads/redexgen/X/ge;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 82125
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TX;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/TY;

    .line 82126
    .local v1, "event":Lcom/facebook/ads/redexgen/X/TY;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/f4;->A00:Lcom/facebook/ads/redexgen/X/ge;

    .line 82127
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TY;->A02()Ljava/lang/String;

    move-result-object v3

    .line 82128
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TY;->A00()I

    move-result v2

    .line 82129
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TY;->A01()Lcom/facebook/ads/redexgen/X/Te;

    move-result-object v1

    .line 82130
    const/4 v0, 0x0

    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TX;->A0B(Lcom/facebook/ads/redexgen/X/T8;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Te;Z)V

    .line 82131
    .end local v1    # "event":Lcom/facebook/ads/redexgen/X/TY;
    goto :goto_0

    .line 82132
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TX;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82133
    return-void
.end method
