.class public final Lcom/facebook/ads/redexgen/X/hm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7M;->A0O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7M;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/hm;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7M;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85099
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/hm;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x48

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/hm;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x1at
        0x4t
        0xft
        0xft
        0x8t
        0x7t
        -0x3dt
        0x4t
        0x17t
        0x17t
        0x4t
        0x6t
        0xbt
        -0x3dt
        0x12t
        0x11t
        -0x3dt
        0x4t
        -0x3dt
        0x6t
        0xbt
        0xct
        0xft
        0x7t
        -0x3dt
        0x1at
        0xbt
        0xct
        0x6t
        0xbt
        -0x3dt
        0xct
        0x16t
        -0x3dt
        0x11t
        0x12t
        0x17t
        -0x3dt
        0x7t
        0x8t
        0x17t
        0x4t
        0x6t
        0xbt
        0x8t
        0x7t
        -0x23t
        -0x3dt
        -0x35t
        -0x37t
        -0x2ct
        -0x2ct
        -0x33t
        -0x34t
        -0x78t
        -0x34t
        -0x33t
        -0x24t
        -0x37t
        -0x35t
        -0x30t
        -0x78t
        -0x29t
        -0x2at
        -0x78t
        -0x37t
        -0x2at
        -0x78t
        -0x37t
        -0x2ct
        -0x26t
        -0x33t
        -0x37t
        -0x34t
        -0x1ft
        -0x78t
        -0x34t
        -0x33t
        -0x24t
        -0x37t
        -0x35t
        -0x30t
        -0x33t
        -0x34t
        -0x78t
        -0x35t
        -0x30t
        -0x2ft
        -0x2ct
        -0x34t
        -0x78t
    .end array-data
.end method


# virtual methods
.method public final A4K(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 85100
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v4

    .line 85101
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/RK;
    if-eqz v4, :cond_1

    .line 85102
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RK;->A0i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85103
    :cond_0
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RK;->A0V()V

    .line 85104
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7M;->A0w(Lcom/facebook/ads/redexgen/X/7M;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 85105
    return-void

    .line 85106
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x30

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    .line 85107
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A5w(I)V
    .locals 5

    .line 85108
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/hm;->A7H(I)Landroid/view/View;

    move-result-object v0

    .line 85109
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 85110
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v4

    .line 85111
    .local v1, "vh":Lcom/facebook/ads/redexgen/X/RK;
    if-eqz v4, :cond_1

    .line 85112
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RK;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/RK;->A0l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85113
    :cond_0
    const/16 v0, 0x100

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0Z(I)V

    .line 85114
    .end local v1    # "vh":Lcom/facebook/ads/redexgen/X/RK;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A0u(Lcom/facebook/ads/redexgen/X/7M;I)V

    .line 85115
    return-void

    .line 85116
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/16 v1, 0x2b

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/hm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    .line 85117
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->A1J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A7H(I)Landroid/view/View;
    .locals 1

    .line 85118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final A7I()I
    .locals 1

    .line 85119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final A7L(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;
    .locals 1

    .line 85120
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v0

    return-object v0
.end method

.method public final AA7(Landroid/view/View;)I
    .locals 1

    .line 85121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final ADo(Landroid/view/View;)V
    .locals 2

    .line 85122
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    .line 85123
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/RK;
    if-eqz v1, :cond_0

    .line 85124
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0B(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/7M;)V

    .line 85125
    :cond_0
    return-void
.end method

.method public final AEa(Landroid/view/View;)V
    .locals 2

    .line 85126
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/7M;->A0F(Landroid/view/View;)Lcom/facebook/ads/redexgen/X/RK;

    move-result-object v1

    .line 85127
    .local v0, "vh":Lcom/facebook/ads/redexgen/X/RK;
    if-eqz v1, :cond_0

    .line 85128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/RK;->A0C(Lcom/facebook/ads/redexgen/X/RK;Lcom/facebook/ads/redexgen/X/7M;)V

    .line 85129
    :cond_0
    return-void
.end method

.method public final AIQ()V
    .locals 4

    .line 85130
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hm;->A7I()I

    move-result v3

    .line 85131
    .local v0, "count":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 85132
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/hm;->A7H(I)Landroid/view/View;

    move-result-object v1

    .line 85133
    .local v2, "child":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->A1g(Landroid/view/View;)V

    .line 85134
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 85135
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85136
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7M;->removeAllViews()V

    .line 85137
    return-void
.end method

.method public final AIW(I)V
    .locals 2

    .line 85138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 85139
    .local v0, "child":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 85140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/7M;->A1g(Landroid/view/View;)V

    .line 85141
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 85142
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->removeViewAt(I)V

    .line 85143
    return-void
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 85144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/7M;->addView(Landroid/view/View;I)V

    .line 85145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/hm;->A00:Lcom/facebook/ads/redexgen/X/7M;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7M;->A1f(Landroid/view/View;)V

    .line 85146
    return-void
.end method
