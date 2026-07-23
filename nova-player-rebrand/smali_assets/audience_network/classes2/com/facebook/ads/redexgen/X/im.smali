.class public final Lcom/facebook/ads/redexgen/X/im;
.super Lcom/facebook/ads/redexgen/X/WP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ik;->AEs(ILjava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/os/Message;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ik;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ik;Landroid/os/Message;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 87393
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/im;->A01:Lcom/facebook/ads/redexgen/X/ik;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/im;->A00:Landroid/os/Message;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/WP;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 87394
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A01:Lcom/facebook/ads/redexgen/X/ik;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/ik;->A05:Lcom/facebook/ads/redexgen/X/OQ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/im;->A00:Landroid/os/Message;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OQ;->A9j(Landroid/os/Message;)V

    .line 87395
    return-void
.end method
