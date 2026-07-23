.class public final Lcom/facebook/ads/redexgen/X/9h;
.super Lcom/facebook/ads/redexgen/X/nD;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9i;,
        Lcom/facebook/ads/redexgen/X/Ef;,
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$ParametersBuilder;,
        Lcom/facebook/ads/redexgen/X/Eh;,
        Lcom/facebook/ads/redexgen/X/Ec;,
        Lcom/facebook/ads/redexgen/X/nH;,
        Lcom/facebook/ads/redexgen/X/nG;,
        Lcom/facebook/ads/redexgen/X/nM;,
        Lcom/facebook/ads/redexgen/X/nF;,
        Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionEligibility;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Lcom/facebook/ads/redexgen/X/qK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/qK<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0A:Lcom/facebook/ads/redexgen/X/qK;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/qK<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/qQ;

.field public A01:Lcom/facebook/ads/redexgen/X/9i;

.field public A02:Lcom/facebook/ads/redexgen/X/Ef;

.field public final A03:Landroid/content/Context;

.field public final A04:Lcom/facebook/ads/redexgen/X/Em;

.field public final A05:Ljava/lang/Object;

.field public final A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 560
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yr7s5jzv1addyUjDczkFmKgb3TbXTjPI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "k5bxDF12X7IfueMvpCyLhsS14secbcRr"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "A1nn9z9SPvnfAziOnMuSk0GZzxZ0jVfY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Bn8GSVMc2Ww3cTp6j1ZQIVGuo4fvIYJ3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KOSGSA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "kbDMqlVGuQuF7sZpY9G1V32bVqx23m"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bfxskyCfRQ3e5JfVyMYK1TBq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KPf5jweXKATwb3ocWNu711OjnnCWcsTU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9h;->A0M()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/EZ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/EZ;-><init>()V

    .line 561
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qK;->A04(Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9h;->A09:Lcom/facebook/ads/redexgen/X/qK;

    .line 562
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ea;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Ea;-><init>()V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/qK;->A04(Ljava/util/Comparator;)Lcom/facebook/ads/redexgen/X/qK;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9h;->A0A:Lcom/facebook/ads/redexgen/X/qK;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25179
    sget-object v1, Lcom/facebook/ads/redexgen/X/9i;->A0J:Lcom/facebook/ads/redexgen/X/9i;

    new-instance v0, Lcom/facebook/ads/redexgen/X/nR;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nR;-><init>()V

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/pc;Lcom/facebook/ads/redexgen/X/Em;)V

    .line 25180
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Em;)V
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CONSTRUCTOR"
        }
        value = "Backward Compatible Constructor"
    .end annotation

    .line 25181
    sget-object v0, Lcom/facebook/ads/redexgen/X/9i;->A0J:Lcom/facebook/ads/redexgen/X/9i;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/pc;Lcom/facebook/ads/redexgen/X/Em;)V

    .line 25182
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pc;Lcom/facebook/ads/redexgen/X/Em;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Lcom/facebook/ads/redexgen/X/pc;Lcom/facebook/ads/redexgen/X/Em;Landroid/content/Context;)V

    .line 25184
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/pc;Lcom/facebook/ads/redexgen/X/Em;Landroid/content/Context;)V
    .locals 4

    .line 25185
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/nD;-><init>()V

    .line 25186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A05:Ljava/lang/Object;

    .line 25187
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A03:Landroid/content/Context;

    .line 25188
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9h;->A04:Lcom/facebook/ads/redexgen/X/Em;

    .line 25189
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/9i;

    if-eqz v0, :cond_3

    .line 25190
    check-cast p1, Lcom/facebook/ads/redexgen/X/9i;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    .line 25191
    .end local v0
    :goto_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A07:Lcom/facebook/ads/redexgen/X/qQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A00:Lcom/facebook/ads/redexgen/X/qQ;

    .line 25192
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/5C;->A18(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A06:Z

    .line 25193
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A06:Z

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x20

    if-lt v1, v0, :cond_0

    .line 25194
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Ef;->A00(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Ef;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    .line 25195
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A08:Z

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 25196
    const/16 v2, 0xbc

    const/16 v1, 0x14

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0xbb

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 25197
    :cond_1
    return-void

    .line 25198
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 25199
    :cond_3
    if-nez p3, :cond_4

    sget-object v0, Lcom/facebook/ads/redexgen/X/9i;->A0J:Lcom/facebook/ads/redexgen/X/9i;

    .line 25200
    .local v0, "defaultParameters":Lcom/facebook/ads/redexgen/X/9i;
    :goto_3
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9i;->A0P()Lcom/facebook/ads/redexgen/X/nK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/nK;->A0u(Lcom/facebook/ads/redexgen/X/pc;)Lcom/facebook/ads/redexgen/X/nK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/nK;->A19()Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    goto :goto_1

    .line 25201
    :cond_4
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/9i;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/9i;

    move-result-object v0

    goto :goto_3

    .line 25202
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(II)I
    .locals 0

    .line 25203
    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    .line 25204
    const p0, 0x7fffffff

    return p0

    .line 25205
    :cond_0
    and-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method public static synthetic A01(II)I
    .locals 0

    .line 25206
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/9h;->A00(II)I

    move-result p0

    return p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/qI;Ljava/lang/String;Z)I
    .locals 5

    .line 25207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "utaRfuDCbQDIc6IM3a2tNPgwwhECnGgZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25208
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "bdPum8qTTDlHeCQDHcvgSGFt"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zx28NE7Z14W3AzzAuoWnzSjL1M2eUdTs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 25209
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9h;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 25210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9h;->A0K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 25211
    .local v0, "formatLanguage":Ljava/lang/String;
    const/4 p0, 0x0

    if-eqz v3, :cond_2

    if-nez p1, :cond_4

    .line 25212
    :cond_2
    if-eqz p2, :cond_3

    if-nez v3, :cond_3

    const/4 p0, 0x1

    :cond_3
    return p0

    .line 25213
    :cond_4
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25214
    .end local v2
    .end local v3
    :cond_5
    const/4 v0, 0x3

    return v0

    .line 25215
    :cond_6
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/facebook/ads/redexgen/X/5C;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, p0

    .line 25216
    .local v3, "formatMainLanguage":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/5C;->A1P(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v3, v0, p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    .line 25217
    .local v2, "queryMainLanguage":Ljava/lang/String;
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "rXSrCW"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 25218
    const/4 v0, 0x2

    return v0

    .line 25219
    :cond_7
    return p0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/pg;IIZ)I
    .locals 8

    .line 25220
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    if-ne p2, v0, :cond_1

    .line 25221
    .end local v0
    :cond_0
    return v0

    .line 25222
    :cond_1
    const v5, 0x7fffffff

    .line 25223
    .local v0, "maxVideoPixelsToRetain":I
    const/4 v4, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v4, v0, :cond_3

    .line 25224
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v7

    .line 25225
    .local v2, "format":Lcom/facebook/ads/redexgen/X/qI;
    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    if-lez v0, :cond_2

    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    if-lez v0, :cond_2

    .line 25226
    iget v1, v7, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    .line 25227
    invoke-static {p3, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A09(ZIIII)Landroid/graphics/Point;

    move-result-object v6

    .line 25228
    .local v3, "maxVideoSizeInViewport":Landroid/graphics/Point;
    iget v3, v7, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    mul-int/2addr v3, v0

    .line 25229
    .local v4, "videoPixels":I
    iget v1, v7, Lcom/facebook/ads/redexgen/X/qI;->A0L:I

    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v2, 0x3f7ae148    # 0.98f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_2

    iget v1, v7, Lcom/facebook/ads/redexgen/X/qI;->A0A:I

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-lt v1, v0, :cond_2

    if-ge v3, v5, :cond_2

    .line 25230
    move v5, v3

    .line 25231
    .end local v2    # "format":Lcom/facebook/ads/redexgen/X/qI;
    .end local v3    # "maxVideoSizeInViewport":Landroid/graphics/Point;
    .end local v4    # "videoPixels":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25232
    .end local v1    # "i":I
    :cond_3
    return v5
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/pg;IIZ)I
    .locals 0

    .line 25233
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/9h;->A03(Lcom/facebook/ads/redexgen/X/pg;IIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic A05(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 5

    .line 25234
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 25235
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    const/4 v4, 0x0

    .line 25236
    :cond_0
    :goto_0
    return v4

    .line 25237
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "gB7bm57sTKDjvfC8pNahT9wGVNX6TDKL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sub-int/2addr v4, v3

    goto :goto_0
.end method

.method public static synthetic A06(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 25238
    const/4 p0, 0x0

    return p0
.end method

.method public static A07(Ljava/lang/String;)I
    .locals 9

    .line 25239
    const/4 v8, 0x0

    if-nez p0, :cond_0

    .line 25240
    return v8

    .line 25241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x4

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 25242
    return v8

    .line 25243
    :sswitch_0
    const/16 v2, 0x12c

    const/16 v1, 0x13

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x107

    const/16 v1, 0x9

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const/16 v2, 0x122

    const/16 v1, 0xa

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const/16 v3, 0xfd

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "cKYBOGEqW486lDdcpu93NQ9TicEen6vk"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0xa

    const/16 v0, 0x9

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const/16 v2, 0x110

    const/16 v1, 0x12

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 25244
    :pswitch_0
    return v7

    .line 25245
    :pswitch_1
    return v6

    .line 25246
    :pswitch_2
    return v5

    .line 25247
    :pswitch_3
    return v4

    .line 25248
    :pswitch_4
    const/4 v0, 0x5

    return v0

    .line 25249
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_4
        -0x631b55f6 -> :sswitch_3
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A08(Ljava/lang/String;)I
    .locals 0

    .line 25250
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/9h;->A07(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static A09(ZIIII)Landroid/graphics/Point;
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Made public in D13395849"
    .end annotation

    .line 25251
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    if-le p3, p4, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-le p1, p2, :cond_1

    :goto_1
    if-eq v0, p0, :cond_0

    .line 25252
    move v0, p1

    .line 25253
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 25254
    move p2, v0

    .line 25255
    .end local v0    # "tempViewportWidth":I
    :cond_0
    mul-int p0, p3, p2

    mul-int v0, p4, p1

    if-lt p0, v0, :cond_3

    .line 25256
    mul-int v0, p1, p4

    invoke-static {v0, p3}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 25257
    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 25258
    :cond_3
    mul-int v0, p2, p3

    invoke-static {v0, p4}, Lcom/facebook/ads/redexgen/X/5C;->A05(II)I

    move-result p0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p0, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private A0A(ILcom/facebook/ads/redexgen/X/Eo;[[[ILcom/facebook/ads/redexgen/X/Eg;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 18
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "D25277746"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/ads/redexgen/X/Eh<",
            "TT;>;>(I",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[[[I",
            "Lcom/facebook/ads/redexgen/X/Eg<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Ljava/util/List<",
            "TT;>;>;)",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/El;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 25259
    .local p7, "trackInfoFactory":Lcom/facebook/ads/redexgen/X/Eg;, "Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo$Factory<TT;>;"
    .local p8, "selectionComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/List<TT;>;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 25260
    .local v1, "possibleSelections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/List<TT;>;>;"
    move-object/from16 v17, p2

    invoke-virtual/range {v17 .. v17}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v16

    .line 25261
    .local v2, "rendererCount":I
    const/4 v13, 0x0

    .local v3, "rendererIndex":I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_b

    .line 25262
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v0

    move/from16 v1, p1

    if-ne v1, v0, :cond_a

    .line 25263
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v12

    .line 25264
    .local v4, "groups":Lcom/facebook/ads/redexgen/X/nW;
    const/4 v11, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v0, v12, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v11, v0, :cond_a

    .line 25265
    invoke-virtual {v12, v11}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v10

    .line 25266
    .local v7, "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    aget-object v0, p3, v13

    aget-object v0, v0, v11

    .line 25267
    .local v8, "groupSupport":[I
    move-object/from16 v1, p4

    invoke-interface {v1, v13, v10, v0}, Lcom/facebook/ads/redexgen/X/Eg;->A5F(ILcom/facebook/ads/redexgen/X/pg;[I)Ljava/util/List;

    move-result-object v9

    .line 25268
    .local v10, "trackInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v0, v10, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    new-array v8, v0, [Z

    .line 25269
    .local v11, "usedTrackInSelection":[Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 25270
    .local v12, "allFixedTrackInfosInTrackGroup":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25271
    .local v13, "possibleInterTrackGroupSelections":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    const/4 v5, 0x0

    .local v14, "trackIndex":I
    :goto_2
    iget v3, v10, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "GGTbcpljDMs4NAqJNauGpoXnSvHOQ6AN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v5, v3, :cond_7

    .line 25272
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Eh;

    .line 25273
    .local v15, "trackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Eh;->A08()I

    move-result v1

    .line 25274
    .local v0, "eligibility":I
    aget-boolean v0, v8, v5

    if-nez v0, :cond_1

    if-nez v1, :cond_2

    .line 25275
    .end local v0    # "eligibility":I
    .end local v2    # "rendererCount":I
    .end local v4    # "groups":Lcom/facebook/ads/redexgen/X/nW;
    .end local v8    # "groupSupport":[I
    .end local v15    # "trackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    .restart local v16
    .restart local p0    # "this":Lcom/facebook/ads/redexgen/X/9h;
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/Eo;
    :cond_1
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 25276
    .end local v2
    .local v16, "rendererCount":I
    :cond_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 25277
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/BP;->A04(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v3

    .line 25278
    .local v2, "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25279
    .end local v0
    .end local v8
    .restart local p2    # null:Lcom/facebook/ads/redexgen/X/Eo;
    :cond_3
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25280
    .end local v2    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 25281
    .local p0, "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local p0    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v2    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25282
    add-int/lit8 v2, v5, 0x1

    .local v0, "i":I
    .local p1, "eligibility":I
    .end local v4
    .local p0, "groups":Lcom/facebook/ads/redexgen/X/nW;
    :goto_4
    iget v0, v10, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ge v2, v0, :cond_3

    .line 25283
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/Eh;

    .line 25284
    .local v4, "otherTrackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Eh;->A08()I

    move-result v15

    .end local v8
    .local p2, "groupSupport":[I
    const/4 v0, 0x2

    if-ne v15, v0, :cond_5

    .line 25285
    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/Eh;->A09(Lcom/facebook/ads/redexgen/X/Eh;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25286
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25287
    const/4 v0, 0x1

    aput-boolean v0, v8, v2

    .line 25288
    .end local v4    # "otherTrackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_6

    goto :goto_4

    :cond_6
    sget-object v15, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "CPvHWQWYEszLaRsxiIiXKw3X1jOClslA"

    const/4 v0, 0x7

    aput-object v1, v15, v0

    goto :goto_4

    .line 25289
    .end local v16    # "rendererCount":I
    .end local p0    # "groups":Lcom/facebook/ads/redexgen/X/nW;
    .end local p2    # "groupSupport":[I
    .restart local v2    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v4    # "otherTrackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    .restart local v8    # "groupSupport":[I
    .end local v2    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "otherTrackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    .end local v8    # "groupSupport":[I
    .end local v14    # "trackIndex":I
    .restart local v16    # "rendererCount":I
    .restart local p0    # "groups":Lcom/facebook/ads/redexgen/X/nW;
    .restart local p2    # "groupSupport":[I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A0A:Z

    if-eqz v0, :cond_8

    .line 25290
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 25291
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    iget v0, v10, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    if-ne v1, v0, :cond_8

    .line 25292
    invoke-interface {v6}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_9

    .line 25293
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "67hsDi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25294
    :cond_8
    :goto_5
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 25295
    .end local v7    # "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    .end local v10    # "trackInfos":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v11    # "usedTrackInSelection":[Z
    .end local v12    # "allFixedTrackInfosInTrackGroup":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v13    # "possibleInterTrackGroupSelections":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    .end local p2    # "groupSupport":[I
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 25296
    :cond_9
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "yJ8LwG"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 25297
    .end local v2
    .restart local v16    # "rendererCount":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 25298
    .end local v16    # "rendererCount":I
    .restart local v2    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "selection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v3    # "rendererIndex":I
    .restart local v16    # "rendererCount":I
    :cond_b
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_c
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "ji0WxR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_d

    .line 25299
    const/4 v0, 0x0

    return-object v0

    .line 25300
    :cond_d
    move-object/from16 v0, p5

    invoke-static {v14, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 25301
    .local v3, "bestSelection":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 25302
    .local v4, "trackIndices":[I
    const/4 v1, 0x0

    .local v5, "i":I
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 25303
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Eh;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Eh;->A01:I

    aput v0, v3, v1

    .line 25304
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 25305
    .end local v5    # "i":I
    :cond_e
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/Eh;

    .line 25306
    .local v5, "firstTrackInfo":Lcom/facebook/ads/redexgen/X/Eh;, "TT;"
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A03:Lcom/facebook/ads/redexgen/X/pg;

    new-instance v1, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/pg;[I)V

    iget v0, v2, Lcom/facebook/ads/redexgen/X/Eh;->A00:I

    .line 25307
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 25308
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final A0B(Lcom/facebook/ads/redexgen/X/Eo;[[[ILcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[[[I",
            "Lcom/facebook/ads/redexgen/X/9i;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/El;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 25309
    new-instance v4, Lcom/facebook/ads/redexgen/X/nN;

    invoke-direct {v4, p3, p4}, Lcom/facebook/ads/redexgen/X/nN;-><init>(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;)V

    new-instance v5, Lcom/facebook/ads/redexgen/X/EY;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/EY;-><init>()V

    const/4 v1, 0x3

    move-object v0, p0

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9h;->A0A(ILcom/facebook/ads/redexgen/X/Eo;[[[ILcom/facebook/ads/redexgen/X/Eg;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/9i;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[[[I[I",
            "Lcom/facebook/ads/redexgen/X/9i;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/El;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 25310
    const/4 v3, 0x0

    .line 25311
    .local v0, "hasVideoRendererWithMappedTracks":Z
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    move-object v4, p1

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 25312
    const/4 v1, 0x2

    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 25313
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-lez v0, :cond_1

    .line 25314
    const/4 v3, 0x1

    .line 25315
    .end local v1    # "i":I
    .local v1, "hasVideoRendererWithMappedTracksFinal":Z
    :cond_0
    new-instance v6, Lcom/facebook/ads/redexgen/X/nO;

    invoke-direct {v6, p0, p4, v3}, Lcom/facebook/ads/redexgen/X/nO;-><init>(Lcom/facebook/ads/redexgen/X/9h;Lcom/facebook/ads/redexgen/X/9i;Z)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/EX;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/EX;-><init>()V

    const/4 v3, 0x1

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/9h;->A0A(ILcom/facebook/ads/redexgen/X/Eo;[[[ILcom/facebook/ads/redexgen/X/Eg;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 25316
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[[[I[I",
            "Lcom/facebook/ads/redexgen/X/9i;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/facebook/ads/redexgen/X/El;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 25317
    new-instance v4, Lcom/facebook/ads/redexgen/X/nQ;

    invoke-direct {v4, p4, p5, p3}, Lcom/facebook/ads/redexgen/X/nQ;-><init>(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;[I)V

    new-instance v5, Lcom/facebook/ads/redexgen/X/EW;

    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/EW;-><init>()V

    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/9h;->A0A(ILcom/facebook/ads/redexgen/X/Eo;[[[ILcom/facebook/ads/redexgen/X/Eg;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private final A0E(ILcom/facebook/ads/redexgen/X/nW;[[ILcom/facebook/ads/redexgen/X/9i;)Lcom/facebook/ads/redexgen/X/El;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 25318
    const/4 v7, 0x0

    .line 25319
    .local v0, "selectedGroup":Lcom/facebook/ads/redexgen/X/pg;
    const/4 v11, 0x0

    .line 25320
    .local v1, "selectedTrackIndex":I
    const/4 v6, 0x0

    .line 25321
    .local v2, "selectedTrackScore":Lcom/facebook/ads/redexgen/X/Ec;
    const/4 v5, 0x0

    .local v3, "groupIndex":I
    :goto_0
    iget v0, p2, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v5, v0, :cond_5

    .line 25322
    invoke-virtual {p2, v5}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v4

    .line 25323
    .local v4, "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    aget-object v10, p3, v5

    .line 25324
    .local v5, "trackFormatSupport":[I
    const/4 v3, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v8, v4, Lcom/facebook/ads/redexgen/X/pg;->A01:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "eXe48tlcaaFOVphj3tBJsJZ33XViaUIe"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge v3, v8, :cond_2

    .line 25325
    aget v8, v10, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "FFBXZuvHsKfXoft1igGzNsuMgLJqlaBK"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    move-object/from16 v0, p4

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A0B:Z

    invoke-static {v8, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0S(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25326
    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v1

    .line 25327
    .local v7, "format":Lcom/facebook/ads/redexgen/X/qI;
    new-instance v8, Lcom/facebook/ads/redexgen/X/Ec;

    aget v0, v10, v3

    invoke-direct {v8, v1, v0}, Lcom/facebook/ads/redexgen/X/Ec;-><init>(Lcom/facebook/ads/redexgen/X/qI;I)V

    .line 25328
    .local v8, "trackScore":Lcom/facebook/ads/redexgen/X/Ec;
    if-eqz v6, :cond_0

    invoke-virtual {v8, v6}, Lcom/facebook/ads/redexgen/X/Ec;->A00(Lcom/facebook/ads/redexgen/X/Ec;)I

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "us6BKPnONaHSk6j2pgBHNNPTLKUclzqr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-lez v9, :cond_1

    .line 25329
    :cond_0
    move-object v7, v4

    .line 25330
    move v11, v3

    .line 25331
    move-object v6, v8

    .line 25332
    .end local v7    # "format":Lcom/facebook/ads/redexgen/X/qI;
    .end local v8    # "trackScore":Lcom/facebook/ads/redexgen/X/Ec;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25333
    .end local v4    # "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    .end local v5    # "trackFormatSupport":[I
    .end local v6    # "trackIndex":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25334
    .end local v3    # "groupIndex":I
    :cond_5
    if-nez v7, :cond_6

    .line 25335
    const/4 v1, 0x0

    .line 25336
    :goto_2
    return-object v1

    .line 25337
    :cond_6
    filled-new-array {v11}, [I

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/pg;[I)V

    goto :goto_2
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/pg;[I)Lcom/facebook/ads/redexgen/X/BP;
    .locals 0

    .line 25338
    invoke-static {p2, p3, p0, p4, p1}, Lcom/facebook/ads/redexgen/X/nG;->A02(ILcom/facebook/ads/redexgen/X/pg;Lcom/facebook/ads/redexgen/X/9i;[ILjava/lang/String;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;[IILcom/facebook/ads/redexgen/X/pg;[I)Lcom/facebook/ads/redexgen/X/BP;
    .locals 2

    .line 25339
    move v0, p3

    aget p3, p2, v0

    move-object v1, p4

    move-object p2, p1

    move-object p1, p5

    move-object p0, p0

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/nF;->A06(ILcom/facebook/ads/redexgen/X/pg;Lcom/facebook/ads/redexgen/X/9i;[ILjava/lang/String;I)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0H()Lcom/facebook/ads/redexgen/X/qK;
    .locals 1

    .line 25340
    sget-object v0, Lcom/facebook/ads/redexgen/X/9h;->A09:Lcom/facebook/ads/redexgen/X/qK;

    return-object v0
.end method

.method public static synthetic A0I()Lcom/facebook/ads/redexgen/X/qK;
    .locals 1

    .line 25341
    sget-object v0, Lcom/facebook/ads/redexgen/X/9h;->A0A:Lcom/facebook/ads/redexgen/X/qK;

    return-object v0
.end method

.method public static A0J(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1b

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "58VoVy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0K(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25342
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v2, 0xfa

    const/4 v1, 0x3

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25343
    :cond_0
    const/4 p0, 0x0

    .line 25344
    :cond_1
    return-object p0
.end method

.method private A0L()V
    .locals 3

    .line 25345
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9h;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 25346
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A08:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A06:Z

    if-nez v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x20

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    .line 25347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25348
    .local v1, "shouldInvalidate":Z
    :goto_0
    monitor-exit v2

    .line 25349
    if-eqz v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25350
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ew;->A01()V

    .line 25351
    :cond_1
    return-void

    .line 25352
    .end local v1    # "shouldInvalidate":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A0M()V
    .locals 1

    const/16 v0, 0x13f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9h;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x5bt
        0x5ct
        -0x70t
        0x7ft
        -0x7ct
        -0x76t
        0x3bt
        0x7et
        -0x7dt
        0x7ct
        -0x77t
        -0x77t
        -0x80t
        -0x79t
        0x3bt
        0x7et
        -0x76t
        -0x70t
        -0x77t
        -0x71t
        0x3bt
        0x7et
        -0x76t
        -0x77t
        -0x72t
        -0x71t
        -0x73t
        0x7ct
        -0x7ct
        -0x77t
        -0x71t
        -0x72t
        0x3bt
        0x7et
        0x7ct
        -0x77t
        -0x77t
        -0x76t
        -0x71t
        0x3bt
        0x7dt
        -0x80t
        0x3bt
        0x7ct
        -0x75t
        -0x75t
        -0x79t
        -0x7ct
        -0x80t
        0x7ft
        0x3bt
        -0x6et
        -0x7ct
        -0x71t
        -0x7dt
        -0x76t
        -0x70t
        -0x71t
        0x3bt
        -0x73t
        -0x80t
        -0x7ft
        -0x80t
        -0x73t
        -0x80t
        -0x77t
        0x7et
        -0x80t
        0x3bt
        -0x71t
        -0x76t
        0x3bt
        0x5et
        -0x76t
        -0x77t
        -0x71t
        -0x80t
        -0x6dt
        -0x71t
        0x49t
        0x3bt
        0x5dt
        -0x70t
        -0x7ct
        -0x79t
        0x7ft
        0x3bt
        -0x71t
        -0x7dt
        -0x80t
        0x3bt
        -0x71t
        -0x73t
        0x7ct
        0x7et
        -0x7at
        0x3bt
        -0x72t
        -0x80t
        -0x79t
        -0x80t
        0x7et
        -0x71t
        -0x76t
        -0x73t
        0x3bt
        -0x7ct
        -0x77t
        -0x72t
        -0x71t
        0x7ct
        -0x77t
        0x7et
        -0x80t
        0x3bt
        -0x6et
        -0x7ct
        -0x71t
        -0x7dt
        0x3bt
        -0x76t
        -0x77t
        -0x80t
        0x3bt
        -0x76t
        -0x7ft
        0x3bt
        -0x71t
        -0x7dt
        -0x80t
        0x3bt
        -0x77t
        -0x76t
        -0x77t
        0x48t
        0x7ft
        -0x80t
        -0x75t
        -0x73t
        -0x80t
        0x7et
        0x7ct
        -0x71t
        -0x80t
        0x7ft
        0x3bt
        0x7et
        -0x76t
        -0x77t
        -0x72t
        -0x71t
        -0x73t
        -0x70t
        0x7et
        -0x71t
        -0x76t
        -0x73t
        -0x72t
        0x3bt
        -0x71t
        -0x7dt
        0x7ct
        -0x71t
        0x3bt
        -0x71t
        0x7ct
        -0x7at
        -0x80t
        0x3bt
        0x7ct
        0x3bt
        0x5et
        -0x76t
        -0x77t
        -0x71t
        -0x80t
        -0x6dt
        -0x71t
        0x3bt
        0x7ct
        -0x73t
        -0x7et
        -0x70t
        -0x78t
        -0x80t
        -0x77t
        -0x71t
        0x49t
        -0x67t
        -0x46t
        -0x45t
        -0x4at
        -0x36t
        -0x3ft
        -0x37t
        -0x57t
        -0x39t
        -0x4at
        -0x48t
        -0x40t
        -0x58t
        -0x46t
        -0x3ft
        -0x46t
        -0x48t
        -0x37t
        -0x3ct
        -0x39t
        -0x39t
        -0x25t
        -0x36t
        -0x31t
        -0x2bt
        -0x6bt
        -0x39t
        -0x37t
        -0x67t
        -0x53t
        -0x3ft
        -0x50t
        -0x4bt
        -0x45t
        0x7bt
        -0x53t
        -0x51t
        -0x80t
        -0x31t
        -0x1dt
        -0x2et
        -0x29t
        -0x23t
        -0x63t
        -0x2dt
        -0x31t
        -0x2ft
        -0x5ft
        -0x46t
        -0x32t
        -0x43t
        -0x3et
        -0x38t
        -0x78t
        -0x42t
        -0x46t
        -0x44t
        -0x74t
        -0x7at
        -0x3dt
        -0x38t
        -0x44t
        -0x36t
        -0x3dt
        -0x47t
        -0x77t
        0x7ct
        0x77t
        0x78t
        -0x7et
        0x42t
        0x74t
        -0x77t
        0x43t
        0x44t
        -0x62t
        -0x6ft
        -0x74t
        -0x73t
        -0x69t
        0x57t
        -0x77t
        -0x62t
        -0x75t
        -0x21t
        -0x2et
        -0x33t
        -0x32t
        -0x28t
        -0x68t
        -0x33t
        -0x28t
        -0x2bt
        -0x35t
        -0x1et
        -0x6at
        -0x21t
        -0x2et
        -0x24t
        -0x2et
        -0x28t
        -0x29t
        -0x5ct
        -0x69t
        -0x6et
        -0x6dt
        -0x63t
        0x5dt
        -0x6at
        -0x6dt
        -0x5ct
        -0x6ft
        -0xbt
        -0x18t
        -0x1dt
        -0x1ct
        -0x12t
        -0x52t
        -0x9t
        -0x54t
        -0xbt
        -0x13t
        -0x1dt
        -0x53t
        -0x12t
        -0x13t
        -0x4ft
        -0x53t
        -0xbt
        -0x11t
        -0x48t
    .end array-data
.end method

.method public static A0N(Lcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/pc;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/nW;",
            "Lcom/facebook/ads/redexgen/X/pc;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/ads/redexgen/X/pe;",
            ">;)V"
        }
    .end annotation

    .line 25353
    .local p4, "overridesByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/common/TrackSelectionOverride;>;"
    const/4 v2, 0x0

    .local v0, "trackGroupIndex":I
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nW;->A01:I

    if-ge v2, v0, :cond_3

    .line 25354
    invoke-virtual {p0, v2}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v1

    .line 25355
    .local v1, "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/pc;->A0G:Lcom/facebook/ads/redexgen/X/oX;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/oX;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/pe;

    .line 25356
    .local v2, "override":Lcom/facebook/ads/redexgen/X/pe;
    if-nez v1, :cond_1

    .line 25357
    .end local v1    # "trackGroup":Lcom/facebook/ads/redexgen/X/pg;
    .end local v2    # "override":Lcom/facebook/ads/redexgen/X/pe;
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/nW;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25358
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/pe;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/pe;

    .line 25359
    .local p0, "existingOverride":Lcom/facebook/ads/redexgen/X/pe;
    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    .line 25360
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25361
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/pe;->A01()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 25362
    .end local v0    # "trackGroupIndex":I
    :cond_3
    return-void
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/9h;)V
    .locals 0

    .line 25363
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9h;->A0L()V

    return-void
.end method

.method public static A0P(Lcom/facebook/ads/redexgen/X/Eo;Lcom/facebook/ads/redexgen/X/pc;[Lcom/facebook/ads/redexgen/X/El;)V
    .locals 8

    .line 25364
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v4

    .line 25365
    .local v0, "rendererCount":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 25366
    .local v1, "overridesByType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/facebook/ads/androidx/media3/common/TrackSelectionOverride;>;"
    const/4 v1, 0x0

    .local v2, "rendererIndex":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 25367
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v0

    .line 25368
    invoke-static {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/9h;->A0N(Lcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/pc;Ljava/util/Map;)V

    .line 25369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25370
    .end local v2    # "rendererIndex":I
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eo;->A06()Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v0

    .line 25371
    invoke-static {v0, p1, v3}, Lcom/facebook/ads/redexgen/X/9h;->A0N(Lcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/pc;Ljava/util/Map;)V

    .line 25372
    const/4 v5, 0x0

    .restart local v2    # "rendererIndex":I
    :goto_1
    if-ge v5, v4, :cond_4

    .line 25373
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v0

    .line 25374
    .local v3, "trackType":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/ads/redexgen/X/pe;

    .line 25375
    .local v4, "overrideForType":Lcom/facebook/ads/redexgen/X/pe;
    if-nez v6, :cond_1

    .line 25376
    .end local v3    # "trackType":I
    .end local v4    # "overrideForType":Lcom/facebook/ads/redexgen/X/pe;
    .end local v5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25377
    :cond_1
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/BP;->isEmpty()Z

    move-result v7

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x72

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "YbaSeo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v7, :cond_2

    .line 25378
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/nW;->A04(Lcom/facebook/ads/redexgen/X/pg;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 25379
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/pe;->A00:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/pe;->A01:Lcom/facebook/ads/redexgen/X/BP;

    .line 25380
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/As;->A0B(Ljava/util/Collection;)[I

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/pg;[I)V

    .line 25381
    .local v5, "selection":Lcom/facebook/ads/redexgen/X/El;
    .restart local v5    # "selection":Lcom/facebook/ads/redexgen/X/El;
    :goto_3
    aput-object v0, p2, v5

    goto :goto_2

    .line 25382
    .end local v5    # "selection":Lcom/facebook/ads/redexgen/X/El;
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25383
    .end local v2    # "rendererIndex":I
    :cond_4
    return-void
.end method

.method public static A0Q(Lcom/facebook/ads/redexgen/X/Eo;Lcom/facebook/ads/redexgen/X/9i;[Lcom/facebook/ads/redexgen/X/El;)V
    .locals 8

    .line 25384
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v5

    .line 25385
    .local v0, "rendererCount":I
    const/4 v4, 0x0

    .local v1, "rendererIndex":I
    :goto_0
    if-ge v4, v5, :cond_4

    .line 25386
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v3

    .line 25387
    .local v2, "trackGroups":Lcom/facebook/ads/redexgen/X/nW;
    invoke-virtual {p1, v4, v3}, Lcom/facebook/ads/redexgen/X/9i;->A0S(ILcom/facebook/ads/redexgen/X/nW;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25388
    .end local v2    # "trackGroups":Lcom/facebook/ads/redexgen/X/nW;
    .end local v3
    .end local v4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25389
    :cond_0
    invoke-virtual {p1, v4, v3}, Lcom/facebook/ads/redexgen/X/9i;->A0Q(ILcom/facebook/ads/redexgen/X/nW;)Lcom/facebook/ads/redexgen/X/nH;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    .line 25390
    .local v3, "override":Lcom/facebook/ads/redexgen/X/nH;
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "K8f1XF422sl3cXXm"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v6, :cond_1

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    array-length v7, v0

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "KnBpd5"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v7, :cond_1

    .line 25391
    iget v0, v6, Lcom/facebook/ads/redexgen/X/nH;->A00:I

    .line 25392
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/nW;->A05(I)Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v3

    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/nH;->A03:[I

    iget v1, v6, Lcom/facebook/ads/redexgen/X/nH;->A02:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/El;-><init>(Lcom/facebook/ads/redexgen/X/pg;[II)V

    .line 25393
    .local v4, "selection":Lcom/facebook/ads/redexgen/X/El;
    .restart local v4    # "selection":Lcom/facebook/ads/redexgen/X/El;
    :goto_2
    aput-object v0, p2, v4

    goto :goto_1

    .line 25394
    .end local v4    # "selection":Lcom/facebook/ads/redexgen/X/El;
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25395
    .end local v1    # "rendererIndex":I
    :cond_4
    return-void
.end method

.method public static A0R(Lcom/facebook/ads/redexgen/X/Eo;[[[I[Lcom/facebook/ads/redexgen/X/7s;[Lcom/facebook/ads/redexgen/X/nE;)V
    .locals 11

    .line 25396
    const/4 v9, -0x1

    .line 25397
    .local v0, "tunnelingAudioRendererIndex":I
    const/4 v8, -0x1

    .line 25398
    .local v1, "tunnelingVideoRendererIndex":I
    const/4 v10, 0x1

    .line 25399
    .local v2, "enableTunneling":Z
    const/4 v7, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v3

    const/4 v6, -0x1

    const/4 v5, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "NZY9D9dgjYLNZ0XYpF4W2GrX5uVEwVhV"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge v7, v3, :cond_2

    .line 25400
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v4

    .line 25401
    .local v4, "rendererType":I
    aget-object v3, p3, v7

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    .line 25402
    .local v7, "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "nPMicF"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_1

    :goto_1
    const/4 v0, 0x2

    if-ne v4, v0, :cond_9

    :cond_1
    if-eqz v3, :cond_9

    .line 25403
    aget-object v1, p1, v7

    .line 25404
    invoke-virtual {p0, v7}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v0

    .line 25405
    invoke-static {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/9h;->A0W([[ILcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/nE;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25406
    if-ne v4, v5, :cond_5

    .line 25407
    if-eq v9, v6, :cond_7

    .line 25408
    const/4 v10, 0x0

    .line 25409
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-eq v9, v6, :cond_4

    if-eq v8, v6, :cond_4

    const/4 v0, 0x1

    :goto_3
    and-int/2addr v10, v0

    .line 25410
    if-eqz v10, :cond_3

    .line 25411
    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/7s;-><init>(Z)V

    .line 25412
    .local v3, "tunnelingRendererConfiguration":Lcom/facebook/ads/redexgen/X/7s;
    aput-object v0, p2, v9

    .line 25413
    aput-object v0, p2, v8

    .line 25414
    .end local v3    # "tunnelingRendererConfiguration":Lcom/facebook/ads/redexgen/X/7s;
    :cond_3
    return-void

    .line 25415
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 25416
    :cond_5
    if-eq v8, v6, :cond_8

    .line 25417
    const/4 v10, 0x0

    .line 25418
    goto :goto_2

    .line 25419
    .local v7, "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "5F5ko3NIDU1YMXmZZUDVXdSE"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1c60xx4jFCOb1nSxKeVAoj10cRAS07b7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 25420
    :cond_7
    move v9, v7

    goto :goto_4

    .line 25421
    :cond_8
    move v8, v7

    .line 25422
    .end local v4    # "rendererType":I
    .end local v7    # "trackSelection":Lcom/facebook/ads/redexgen/X/nE;
    :cond_9
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public static A0S(IZ)Z
    .locals 1
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Made public for customization on DashManifestHelper"
    .end annotation

    .line 25423
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7i;->A03(I)I

    move-result p0

    .line 25424
    .local v0, "maskedSupport":I
    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0T(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 3

    .line 25425
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9h;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 25426
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9i;->A08:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A06:Z

    if-nez v0, :cond_2

    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    const/4 v0, 0x2

    if-le v1, v0, :cond_2

    .line 25427
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9h;->A0U(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    .line 25428
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A06()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    .line 25429
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A06()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    .line 25430
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    .line 25431
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ef;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9h;->A00:Lcom/facebook/ads/redexgen/X/qQ;

    .line 25432
    invoke-virtual {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/Ef;->A07(Lcom/facebook/ads/redexgen/X/qQ;Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    .line 25433
    return v0

    .line 25434
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A0U(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 6

    .line 25435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v0, :cond_0

    .line 25436
    return v5

    .line 25437
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 25438
    return v5

    .line 25439
    :sswitch_0
    const/16 v2, 0xe2

    const/16 v1, 0xa

    const/16 v0, 0x64

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const/16 v2, 0xd9

    const/16 v1, 0x9

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const/16 v2, 0xd0

    const/16 v1, 0x9

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const/16 v2, 0xec

    const/16 v1, 0xe

    const/16 v0, 0x4f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9h;->A0J(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 25440
    :pswitch_0
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/9h;Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9h;->A0T(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result p0

    return p0
.end method

.method public static A0W([[ILcom/facebook/ads/redexgen/X/nW;Lcom/facebook/ads/redexgen/X/nE;)Z
    .locals 5

    .line 25441
    const/4 v4, 0x0

    if-nez p2, :cond_0

    .line 25442
    return v4

    .line 25443
    :cond_0
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/Eq;->A9L()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/nW;->A04(Lcom/facebook/ads/redexgen/X/pg;)I

    move-result v3

    .line 25444
    .local v1, "trackGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/Eq;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 25445
    aget-object v1, p0, v3

    invoke-interface {p2, v2}, Lcom/facebook/ads/redexgen/X/Eq;->A8H(I)I

    move-result v0

    aget v0, v1, v0

    .line 25446
    .local v3, "trackFormatSupport":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7i;->A05(I)I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    .line 25447
    return v4

    .line 25448
    .end local v3    # "trackFormatSupport":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25449
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private final A0X(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/9i;)[Lcom/facebook/ads/redexgen/X/El;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 25450
    move-object v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v4

    .line 25451
    .local v0, "rendererCount":I
    new-array v3, v4, [Lcom/facebook/ads/redexgen/X/El;

    .line 25452
    .local v1, "definitions":[Lcom/facebook/ads/redexgen/X/El;
    move-object/from16 v11, p4

    move-object/from16 v10, p3

    move-object v9, p2

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/facebook/ads/redexgen/X/9h;->A0C(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/9i;)Landroid/util/Pair;

    move-result-object v5

    .line 25453
    .local v2, "selectedAudio":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    .line 25454
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "yBKbxgl1qoYBYNtasAVV61g1RQWhRN9O"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/El;

    aput-object v0, v3, v1

    .line 25455
    :cond_0
    if-nez v5, :cond_4

    .line 25456
    const/4 v12, 0x0

    .line 25457
    .local v3, "selectedAudioLanguage":Ljava/lang/String;
    :goto_0
    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/9h;->A0D(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 25458
    .local v4, "selectedVideo":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 25459
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/El;

    aput-object v0, v3, v1

    .line 25460
    :cond_1
    invoke-direct {p0, v8, v9, v11, v12}, Lcom/facebook/ads/redexgen/X/9h;->A0B(Lcom/facebook/ads/redexgen/X/Eo;[[[ILcom/facebook/ads/redexgen/X/9i;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 25461
    .local v5, "selectedText":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_2

    .line 25462
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/El;

    aput-object v0, v3, v1

    .line 25463
    :cond_2
    const/4 v5, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v5, v4, :cond_6

    .line 25464
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v6

    .line 25465
    .local v7, "trackType":I
    const/4 v0, 0x2

    if-eq v6, v0, :cond_3

    const/4 v0, 0x1

    if-eq v6, v0, :cond_3

    const/4 v7, 0x3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/9h;->A08:[Ljava/lang/String;

    const-string v1, "1xsmyE1OdjkvrsbXr4cEFZBV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "D4xPicyrc2caIP01Cw6NBhV2pRXBVsmG"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eq v6, v7, :cond_3

    .line 25466
    invoke-virtual {v8, v5}, Lcom/facebook/ads/redexgen/X/Eo;->A07(I)Lcom/facebook/ads/redexgen/X/nW;

    move-result-object v1

    aget-object v0, v9, v5

    .line 25467
    invoke-direct {p0, v6, v1, v0, v11}, Lcom/facebook/ads/redexgen/X/9h;->A0E(ILcom/facebook/ads/redexgen/X/nW;[[ILcom/facebook/ads/redexgen/X/9i;)Lcom/facebook/ads/redexgen/X/El;

    move-result-object v0

    aput-object v0, v3, v5

    .line 25468
    .end local v7    # "trackType":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 25469
    :cond_4
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/El;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/El;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/El;->A02:[I

    const/4 v0, 0x0

    aget v0, v1, v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/pg;->A08(I)Lcom/facebook/ads/redexgen/X/qI;

    move-result-object v0

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/qI;->A0V:Ljava/lang/String;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 25470
    .end local v6    # "i":I
    :cond_6
    return-object v3

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final A0Y()Z
    .locals 1

    .line 25471
    const/4 v0, 0x1

    return v0
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)Landroid/util/Pair;
    .locals 9
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "final removed in D35162315"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Eo;",
            "[[[I[I",
            "Lcom/facebook/ads/redexgen/X/no;",
            "Lcom/facebook/ads/androidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lcom/facebook/ads/redexgen/X/7s;",
            "[",
            "Lcom/facebook/ads/redexgen/X/nE;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/AD;
        }
    .end annotation

    .line 25472
    move-object v8, p0

    iget-object v2, v8, Lcom/facebook/ads/redexgen/X/9h;->A05:Ljava/lang/Object;

    monitor-enter v2

    .line 25473
    :try_start_0
    iget-object v6, v8, Lcom/facebook/ads/redexgen/X/9h;->A01:Lcom/facebook/ads/redexgen/X/9i;

    .line 25474
    .local v0, "parameters":Lcom/facebook/ads/redexgen/X/9i;
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/9i;->A08:Z

    if-eqz v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x20

    if-lt v1, v0, :cond_0

    iget-object v0, v8, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    if-eqz v0, :cond_0

    .line 25475
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/9h;->A02:Lcom/facebook/ads/redexgen/X/Ef;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A02(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {v1, v8, v0}, Lcom/facebook/ads/redexgen/X/Ef;->A03(Lcom/facebook/ads/redexgen/X/9h;Landroid/os/Looper;)V

    .line 25476
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25477
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Eo;->A02()I

    move-result v5

    .line 25478
    .local v4, "rendererCount":I
    invoke-direct {v8, p1, p2, p3, v6}, Lcom/facebook/ads/redexgen/X/9h;->A0X(Lcom/facebook/ads/redexgen/X/Eo;[[[I[ILcom/facebook/ads/redexgen/X/9i;)[Lcom/facebook/ads/redexgen/X/El;

    move-result-object v7

    .line 25479
    .local v6, "definitions":[Lcom/facebook/ads/redexgen/X/El;
    invoke-static {p1, v6, v7}, Lcom/facebook/ads/redexgen/X/9h;->A0P(Lcom/facebook/ads/redexgen/X/Eo;Lcom/facebook/ads/redexgen/X/pc;[Lcom/facebook/ads/redexgen/X/El;)V

    .line 25480
    invoke-static {p1, v6, v7}, Lcom/facebook/ads/redexgen/X/9h;->A0Q(Lcom/facebook/ads/redexgen/X/Eo;Lcom/facebook/ads/redexgen/X/9i;[Lcom/facebook/ads/redexgen/X/El;)V

    .line 25481
    const/4 v4, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v4, v5, :cond_3

    .line 25482
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v2

    .line 25483
    .local p0, "rendererType":I
    invoke-virtual {v6, v4}, Lcom/facebook/ads/redexgen/X/9i;->A0R(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/pc;->A0H:Lcom/facebook/ads/redexgen/X/BO;

    .line 25484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oO;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 25485
    :cond_1
    aput-object v3, v7, v4

    .line 25486
    .end local p0    # "rendererType":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 25487
    .end local v7    # "i":I
    :cond_3
    iget-object v1, v8, Lcom/facebook/ads/redexgen/X/9h;->A04:Lcom/facebook/ads/redexgen/X/Em;

    .line 25488
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Ew;->A00()Lcom/facebook/ads/redexgen/X/F6;

    move-result-object v0

    .line 25489
    invoke-interface {v1, v7, v0, p4, p5}, Lcom/facebook/ads/redexgen/X/Em;->A5b([Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)[Lcom/facebook/ads/redexgen/X/nE;

    move-result-object v4

    .line 25490
    .local v7, "rendererTrackSelections":[Lcom/facebook/ads/redexgen/X/nE;
    new-array v3, v5, [Lcom/facebook/ads/redexgen/X/7s;

    .line 25491
    .local p0, "rendererConfigurations":[Lcom/facebook/ads/redexgen/X/7s;
    const/4 v2, 0x0

    .local p3, "i":I
    :goto_1
    if-ge v2, v5, :cond_9

    .line 25492
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v7

    .line 25493
    .local p4, "rendererType":I
    invoke-virtual {v6, v2}, Lcom/facebook/ads/redexgen/X/9i;->A0R(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/pc;->A0H:Lcom/facebook/ads/redexgen/X/BO;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/oO;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    const/4 v0, 0x1

    .line 25494
    .local v8, "forceRendererDisabled":Z
    :goto_2
    if-nez v0, :cond_7

    .line 25495
    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/Eo;->A03(I)I

    move-result v1

    const/4 v0, -0x2

    if-eq v1, v0, :cond_5

    aget-object v0, v4, v2

    if-eqz v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    .line 25496
    .local p5, "rendererEnabled":Z
    :goto_3
    if-eqz v0, :cond_6

    sget-object v0, Lcom/facebook/ads/redexgen/X/7s;->A01:Lcom/facebook/ads/redexgen/X/7s;

    :goto_4
    aput-object v0, v3, v2

    .line 25497
    .end local v8    # "forceRendererDisabled":Z
    .end local p4    # "rendererType":I
    .end local p5    # "rendererEnabled":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 25498
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 25499
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 25500
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 25501
    .end local p3    # "i":I
    :cond_9
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/9i;->A0D:Z

    if-eqz v0, :cond_a

    .line 25502
    invoke-static {p1, p2, v3, v4}, Lcom/facebook/ads/redexgen/X/9h;->A0R(Lcom/facebook/ads/redexgen/X/Eo;[[[I[Lcom/facebook/ads/redexgen/X/7s;[Lcom/facebook/ads/redexgen/X/nE;)V

    .line 25503
    :cond_a
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 25504
    .end local v0    # "parameters":Lcom/facebook/ads/redexgen/X/9i;
    .end local v4    # "rendererCount":I
    .end local v6    # "definitions":[Lcom/facebook/ads/redexgen/X/El;
    .end local v7    # "rendererTrackSelections":[Lcom/facebook/ads/redexgen/X/nE;
    .end local p0    # "rendererConfigurations":[Lcom/facebook/ads/redexgen/X/7s;
    :catchall_0
    move-exception v0

    :goto_5
    :try_start_1
    monitor-exit v2

    goto :goto_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_6
    throw v0
.end method

.method public final synthetic A0e(Lcom/facebook/ads/redexgen/X/9i;ZILcom/facebook/ads/redexgen/X/pg;[I)Lcom/facebook/ads/redexgen/X/BP;
    .locals 6

    .line 25505
    new-instance v5, Lcom/facebook/ads/redexgen/X/nP;

    invoke-direct {v5, p0}, Lcom/facebook/ads/redexgen/X/nP;-><init>(Lcom/facebook/ads/redexgen/X/9h;)V

    move-object v3, p5

    move-object v1, p4

    move v0, p3

    move v4, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/nM;->A03(ILcom/facebook/ads/redexgen/X/pg;Lcom/facebook/ads/redexgen/X/9i;[IZLcom/facebook/ads/redexgen/X/kj;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v0

    return-object v0
.end method
