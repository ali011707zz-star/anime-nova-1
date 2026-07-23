.class public abstract Lcom/facebook/ads/redexgen/X/Jg;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/cp;,
        Lcom/facebook/ads/redexgen/X/cq;,
        Lcom/facebook/ads/redexgen/X/ct;,
        Lcom/facebook/ads/redexgen/X/cs;,
        Lcom/facebook/ads/redexgen/X/cr;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jg;->A0B()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;Z)V
    .locals 2

    .line 43262
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 43263
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43264
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 43266
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/bq;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/bq;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 43267
    :cond_1
    return-void
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jg;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x16

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jg;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x6at
        0x6ft
        0x6ft
        0x6et
        0x7ft
        0x6at
        0x62t
        0x67t
        0x78t
    .end array-data
.end method


# virtual methods
.method public final A1Q()V
    .locals 2

    .line 43268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    .line 43269
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Lcom/facebook/ads/redexgen/X/Kr;)V

    .line 43271
    :cond_0
    return-void
.end method

.method public abstract A1R()V
.end method

.method public abstract A1S()V
.end method

.method public abstract A1T()V
.end method

.method public abstract A1U()Z
.end method

.method public abstract A1V()Z
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 1

    .line 43272
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    return-object v0
.end method

.method public setAdDetailsClickListener(Lcom/facebook/ads/redexgen/X/bF;)V
    .locals 4

    .line 43273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c3;->A07:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 43274
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Jg;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    .line 43275
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jg;->A0A(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/bu;->A03(Lcom/facebook/ads/redexgen/X/Kr;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/bt;

    move-result-object v0

    .line 43276
    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/bF;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43277
    :cond_0
    return-void
.end method

.method public setupNativeCtaExtension(Lcom/facebook/ads/redexgen/X/e5;)V
    .locals 0

    .line 43278
    return-void
.end method
