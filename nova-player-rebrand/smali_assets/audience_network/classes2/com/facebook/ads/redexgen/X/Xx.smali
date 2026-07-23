.class public final Lcom/facebook/ads/redexgen/X/Xx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Xw;
    }
.end annotation


# static fields
.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Landroid/view/Window;

.field public A02:Lcom/facebook/ads/redexgen/X/Xw;

.field public final A03:Landroid/view/View;

.field public final A04:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2406
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "dzM0rIEz66"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2I5EpQxo3JaAydz5j2evjw"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "riIr"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aw8X8aEsXK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "46V10M2ortldVuyFN9G4Mh"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Zv9bhia2uUXHxfPHNrQGPj2Fgj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "UQeU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fL70pxGMq2jlNC9xIpTd7nvL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 73192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73193
    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    .line 73194
    new-instance v0, Lcom/facebook/ads/redexgen/X/QB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/QB;-><init>(Lcom/facebook/ads/redexgen/X/Xx;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A04:Ljava/lang/Runnable;

    .line 73195
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A03:Landroid/view/View;

    .line 73196
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A03:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 73197
    return-void
.end method

.method private A00(IZ)V
    .locals 5

    .line 73198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A01:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 73199
    return-void

    .line 73200
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A01:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 73201
    .local v0, "windowsParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_1

    .line 73202
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, p1

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 73203
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xx;->A01:Landroid/view/Window;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 73204
    :cond_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const-string v1, "Y2LIVjWWRefqfkQFwWbZLdxa4m"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    not-int v0, p1

    and-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const-string v1, "3EQzEkO0gc"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "SinRvB2gIw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    not-int v0, p1

    and-int/2addr v4, v0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const-string v1, "fe0FngUkI8h9c1BO2CK76I"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "nmFu9vDS7iLUjXhy5dSdRg"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 73205
    return-void
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Xx;Z)V
    .locals 0

    .line 73206
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Xx;->A02(Z)V

    return-void
.end method

.method private A02(Z)V
    .locals 5

    .line 73207
    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73208
    return-void

    .line 73209
    :cond_0
    const/16 v4, 0xf00

    .line 73210
    .local v0, "newVisibilityFlags":I
    if-nez p1, :cond_1

    .line 73211
    or-int/lit8 v4, v4, 0x7

    .line 73212
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 73213
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 73214
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A04:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 73215
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Xx;->A04:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73216
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A03:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73217
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 73218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A01:Landroid/view/Window;

    .line 73219
    return-void
.end method

.method public final A04(Landroid/view/Window;)V
    .locals 0

    .line 73220
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A01:Landroid/view/Window;

    .line 73221
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Xw;)V
    .locals 4

    .line 73222
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    .line 73223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xw;->ordinal()I

    move-result v0

    const/high16 v3, 0x8000000

    const/high16 v2, 0x4000000

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 73224
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Xx;->A00(IZ)V

    .line 73225
    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/Xx;->A00(IZ)V

    .line 73226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 73227
    :goto_0
    return-void

    .line 73228
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A00(IZ)V

    .line 73229
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A00(IZ)V

    .line 73230
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Xx;->A02(Z)V

    .line 73231
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSystemUiVisibilityChange(I)V
    .locals 4

    .line 73232
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Xx;->A00:I

    xor-int/2addr v0, p1

    .line 73233
    .local v0, "diff":I
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Xx;->A00:I

    .line 73234
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    and-int/lit8 v3, p1, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const-string v1, "1GVM4GUQqWgiX1iklRLLb2m9Tx"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_1

    .line 73235
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_2

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Xx;->A02(Z)V

    .line 73236
    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xx;->A05:[Ljava/lang/String;

    const-string v1, "67GBv9MjXI"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "0u8xrudpsw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Xx;->A02(Z)V

    goto :goto_0
.end method
