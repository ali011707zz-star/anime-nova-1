.class public final Lcom/facebook/ads/redexgen/X/Q1;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YR;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/content/DialogInterface;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/YR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YR;Landroid/content/DialogInterface;)V
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

    .line 59601
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Q1;->A01:Lcom/facebook/ads/redexgen/X/YR;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Q1;->A00:Landroid/content/DialogInterface;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 59602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A01:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/Pp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Pp;->A01(Lcom/facebook/ads/redexgen/X/Pp;)Lcom/facebook/ads/redexgen/X/fv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59603
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A01:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/Pp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Pp;->A01(Lcom/facebook/ads/redexgen/X/Pp;)Lcom/facebook/ads/redexgen/X/fv;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A01:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/Pp;

    .line 59604
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Pp;->A00(Lcom/facebook/ads/redexgen/X/Pp;)Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WI;->A03(Lcom/facebook/ads/redexgen/X/T8;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/g9;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/g9;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A01:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/YR;->A01:Lcom/facebook/ads/redexgen/X/Pp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A01:Lcom/facebook/ads/redexgen/X/YR;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/YR;->A00:Landroid/widget/EditText;

    .line 59605
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Pp;->A04(Lcom/facebook/ads/redexgen/X/Pp;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/g9;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/g9;

    move-result-object v0

    .line 59606
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/g9;->A08()[B

    move-result-object v0

    .line 59607
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/fv;->AGx(Ljava/lang/String;[B)Lcom/facebook/ads/redexgen/X/fu;

    .line 59608
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Q1;->A00:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    .line 59609
    return-void
.end method
