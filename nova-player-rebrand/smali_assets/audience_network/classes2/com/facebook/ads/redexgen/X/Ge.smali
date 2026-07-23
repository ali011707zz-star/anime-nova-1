.class public final Lcom/facebook/ads/redexgen/X/Ge;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Yi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/dm;
    }
.end annotation


# static fields
.field public static A0L:[B

.field public static A0M:[Ljava/lang/String;

.field public static final A0N:Landroid/widget/RelativeLayout$LayoutParams;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/bY;

.field public A04:Lcom/facebook/ads/redexgen/X/Ij;

.field public A05:Lcom/facebook/ads/redexgen/X/ea;

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/jT;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Rk;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Sx;

.field public final A0D:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0E:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0F:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Xx;

.field public final A0H:Lcom/facebook/ads/redexgen/X/Yb;

.field public final A0I:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0J:Lcom/facebook/ads/redexgen/X/ZU;

.field public final A0K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/dk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 753
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2u2dP7fJh3RTJE0f5j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "V84xfC9vRBWBw28ag3Wa"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AJ9OWsf0IOCB9JkMwpi03POlIdxFWB0O"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "t4KHUJW6pNylT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "agpCzVGtSfjd9ImL9ArnGOWeGltiI7KT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "yQxi0n265GvpKMbNVeZVKXQg4YYx4N"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "9gQlnw56"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "rIoCFSW2UJYE3I7OlTOsSCWVSaoSra"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ge;->A0I()V

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ge;->A0N:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 5

    .line 37189
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0K:Ljava/util/ArrayList;

    .line 37191
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A09:Z

    .line 37192
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A07:Z

    .line 37193
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A08:Z

    .line 37194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A06:Z

    .line 37195
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    .line 37196
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37197
    iput v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A01:I

    .line 37198
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gi;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gi;-><init>(Lcom/facebook/ads/redexgen/X/Ge;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0B:Lcom/facebook/ads/redexgen/X/Rk;

    .line 37199
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 37200
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    .line 37201
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    .line 37202
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37203
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0C:Lcom/facebook/ads/redexgen/X/Sx;

    .line 37204
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    .line 37205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37206
    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    .line 37207
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xx;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0G:Lcom/facebook/ads/redexgen/X/Xx;

    .line 37208
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0G:Lcom/facebook/ads/redexgen/X/Xx;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Xw;->A02:Lcom/facebook/ads/redexgen/X/Xw;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 37209
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37210
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1G()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/ea;

    invoke-direct {v0, v4, v2, v1, p6}, Lcom/facebook/ads/redexgen/X/ea;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Yh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A05:Lcom/facebook/ads/redexgen/X/ea;

    .line 37211
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A07()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    .line 37212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 37213
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37214
    .local v1, "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/XV;->A0u:I

    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0r:I

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 37215
    .restart local v1    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37216
    return-void

    .line 37217
    .end local v1    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method private A00()I
    .locals 6

    .line 37218
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A09:Z

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 37219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37220
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1M()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37221
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A22()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 37222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1N()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37223
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0X(ZI)V

    .line 37224
    return v4

    .line 37225
    :cond_0
    return v3

    .line 37226
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37227
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1M()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37228
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A22()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37229
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1N()Z

    move-result v0

    if-nez v0, :cond_2

    .line 37230
    return v3

    .line 37231
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "AFu5VcCLRWlCVSPev3Ny5pnjuJiPpe"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Nhy8N08k5Vw4Z8hL9UmI1FpStaZ0OS"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37232
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1M()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37233
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A22()I

    move-result v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37234
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1L()Z

    move-result v0

    if-nez v0, :cond_5

    .line 37235
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2I()Z

    move-result v0

    if-nez v0, :cond_4

    .line 37236
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A08:Z

    .line 37237
    :cond_4
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0X(ZI)V

    .line 37238
    return v1

    .line 37239
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "s0FLaM76nMM9Qr7TZwL2usTxvSsXcmqy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fT84jb4om2WjLoB8b8HhBoC0fCgiLofU"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ij;->A1L()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 37240
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A4x()V

    .line 37242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1G()V

    .line 37243
    const/4 v0, 0x3

    return v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "A7yRQ8ZNY7QUzDAYMeY8X6eQmfD57M"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "dEOP0V0Fm3EsPKfzbtzpY8oiy2RB1y"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ij;->A1L()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    .line 37244
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Z()Z

    move-result v0

    const/4 v4, 0x4

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 37245
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0H()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    .line 37246
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "ldx0hXy1"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "A9K45C3zzpDFd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v4

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 37247
    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5h;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37248
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0X(ZI)V

    .line 37249
    const/4 v0, 0x5

    return v0

    .line 37250
    :cond_a
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VH;->A07:Lcom/facebook/ads/redexgen/X/VH;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 37251
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Ge;->A0M(I)V

    .line 37252
    const/4 v0, 0x6

    return v0
.end method

.method private A01(I)I
    .locals 4

    .line 37253
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 37255
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "SFVCTE3Hv2F6eV4jkYzgVN3BuZvLlt"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "be2ILDbetBMqGPrAeiZBpkZxeTc1wp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jT;->A2B()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 37256
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2B()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 37257
    :goto_0
    return v0

    .line 37258
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A0p()I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Ge;)I
    .locals 0

    .line 37259
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Ge;I)I
    .locals 1

    .line 37260
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A01:I

    return v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/jT;
    .locals 0

    .line 37261
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 37262
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 37263
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method private A07()Lcom/facebook/ads/redexgen/X/Yb;
    .locals 10

    .line 37264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37265
    new-instance v3, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v7, 0x2

    invoke-direct/range {v3 .. v9}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IIZ)V

    .line 37266
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    .restart local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setFullscreen(Z)V

    .line 37267
    new-instance v0, Lcom/facebook/ads/redexgen/X/Gf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Gf;-><init>(Lcom/facebook/ads/redexgen/X/Ge;)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Ya;)V

    .line 37268
    return-object v3

    .line 37269
    .end local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    :cond_0
    nop

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37270
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v1

    const/4 v0, 0x2

    new-instance v3, Lcom/facebook/ads/redexgen/X/PU;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PU;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;I)V

    goto :goto_0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 37271
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Yh;
    .locals 0

    .line 37272
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/ZU;
    .locals 0

    .line 37273
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Ge;)Lcom/facebook/ads/redexgen/X/Ij;
    .locals 0

    .line 37274
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    return-object p0
.end method

.method private A0C(ZI)Lcom/facebook/ads/redexgen/X/Ij;
    .locals 32

    .line 37275
    move-object/from16 v0, p0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Gh;

    move/from16 v10, p2

    invoke-direct {v1, v0, v10}, Lcom/facebook/ads/redexgen/X/Gh;-><init>(Lcom/facebook/ads/redexgen/X/Ge;I)V

    .line 37276
    .local v12, "chainedChildAdListener":Lcom/facebook/ads/redexgen/X/dm;
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v14

    .line 37277
    .local p2, "curBundle":Lcom/facebook/ads/redexgen/X/jd;
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/jd;->A2T()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37278
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v2, Lcom/facebook/ads/redexgen/X/dl;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/dl;-><init>(Lcom/facebook/ads/redexgen/X/Ge;)V

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Yb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37279
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37280
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jT;->A2F()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v3, v4, v2

    const/4 v2, 0x4

    aget-object v4, v4, v2

    const/16 v2, 0x13

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v3, v2, :cond_7

    sget-object v4, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v3, "c3gdOFv01Kz0ZnyucW"

    const/4 v2, 0x0

    aput-object v3, v4, v2

    const-string v3, "uUEmXxf6IoafQfC48jcO"

    const/4 v2, 0x1

    aput-object v3, v4, v2

    if-lez v6, :cond_3

    const/16 v27, 0x1

    .line 37281
    .local v10, "suppressImpression":Z
    :goto_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37282
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jT;->A2E()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    if-lez v2, :cond_2

    const/16 v28, 0x1

    .line 37283
    .local v11, "suppressEncryptedCPMNotification":Z
    :goto_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jT;->A29()Ljava/lang/String;

    move-result-object v4

    .line 37284
    .local v14, "chainingParamsJsonStr":Ljava/lang/String;
    invoke-static {v14}, Lcom/facebook/ads/redexgen/X/Ge;->A0b(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37285
    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Ge;->A01(I)I

    move-result v21

    .line 37286
    .local v16, "unskippableSeconds":I
    if-nez v21, :cond_1

    .line 37287
    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37288
    :cond_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/M5;->A06:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 37289
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AJL(I)V

    .line 37290
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/facebook/ads/redexgen/X/Lt;->A4v(Ljava/lang/String;)V

    .line 37291
    new-instance v9, Lcom/facebook/ads/redexgen/X/5h;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37292
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v22

    .end local v14    # "chainingParamsJsonStr":Ljava/lang/String;
    .local v15, "chainingParamsJsonStr":Ljava/lang/String;
    move-object v10, v8

    move-object v11, v7

    move v12, v6

    move-object v13, v5

    move-object v14, v14

    move-object v15, v4

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    move/from16 v18, v27

    move/from16 v19, v28

    move-object/from16 v20, v1

    invoke-direct/range {v9 .. v22}, Lcom/facebook/ads/redexgen/X/5h;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/VI;ZZLcom/facebook/ads/redexgen/X/dm;II)V

    .line 37293
    return-object v9

    .line 37294
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 37295
    :cond_3
    const/16 v27, 0x0

    goto :goto_0

    .line 37296
    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v16    # "unskippableSeconds":I
    .restart local v14    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v14    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    :cond_4
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NR;->A0T()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 37297
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/M5;->A07:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 37298
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AJL(I)V

    .line 37299
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/facebook/ads/redexgen/X/Lt;->A4v(Ljava/lang/String;)V

    .line 37300
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 37301
    new-instance v15, Lcom/facebook/ads/redexgen/X/55;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0C:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37302
    invoke-direct {v0, v11}, Lcom/facebook/ads/redexgen/X/Ge;->A01(I)I

    move-result v29

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37303
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v30

    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .local v9, "chainingParamsJsonStr":Ljava/lang/String;
    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v14

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move/from16 v25, v10

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v1

    invoke-direct/range {v15 .. v30}, Lcom/facebook/ads/redexgen/X/55;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IZZLcom/facebook/ads/redexgen/X/dm;II)V

    .line 37304
    return-object v15

    .line 37305
    .end local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    :cond_5
    new-instance v15, Lcom/facebook/ads/redexgen/X/5F;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0C:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    iget v11, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37306
    invoke-direct {v0, v11}, Lcom/facebook/ads/redexgen/X/Ge;->A01(I)I

    move-result v29

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37307
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v30

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v7

    move-object/from16 v19, v14

    move-object/from16 v20, v6

    move-object/from16 v21, v5

    move/from16 v22, v4

    move-object/from16 v23, v3

    move-object/from16 v24, v2

    move/from16 v25, v10

    move/from16 v26, v27

    move/from16 v27, v28

    move-object/from16 v28, v1

    invoke-direct/range {v15 .. v30}, Lcom/facebook/ads/redexgen/X/5F;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IZZLcom/facebook/ads/redexgen/X/dm;II)V

    .line 37308
    return-object v15

    .line 37309
    .end local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .end local v15    # "chainingParamsJsonStr":Ljava/lang/String;
    .restart local v9    # "chainingParamsJsonStr":Ljava/lang/String;
    :cond_6
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/M5;->A07:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AJt(Lcom/facebook/ads/redexgen/X/M5;)V

    .line 37310
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    invoke-interface {v3, v2}, Lcom/facebook/ads/redexgen/X/Lt;->AJL(I)V

    .line 37311
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/facebook/ads/redexgen/X/Lt;->A4v(Ljava/lang/String;)V

    .line 37312
    new-instance v11, Lcom/facebook/ads/redexgen/X/5S;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v13, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v15, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0C:Lcom/facebook/ads/redexgen/X/Sx;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0F:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37313
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jT;->A0p()I

    move-result v21

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37314
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jT;->A22()I

    move-result v23

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37315
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jT;->A24()I

    move-result v25

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37316
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/jT;->A2I()Z

    move-result v26

    iget v4, v0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37317
    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Ge;->A01(I)I

    move-result v30

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37318
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v31

    move/from16 v24, p1

    move-object/from16 v29, v1

    move/from16 v17, v6

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move/from16 v22, v10

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v31}, Lcom/facebook/ads/redexgen/X/5S;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;Lcom/facebook/ads/redexgen/X/Yb;IIIZIZZZLcom/facebook/ads/redexgen/X/dm;II)V

    .line 37319
    return-object v11

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ge;->A0L:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0E()V
    .locals 2

    .line 37320
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A00()I

    move-result v1

    .line 37321
    .local v0, "skipReason":I
    if-eqz v1, :cond_0

    .line 37322
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A4y(I)V

    .line 37323
    :cond_0
    return-void
.end method

.method private A0F()V
    .locals 8

    .line 37324
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    add-int/lit8 v0, v0, -0x1

    .line 37325
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 37326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37327
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    add-int/lit8 v0, v0, -0x1

    .line 37328
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    .line 37329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->getAdViewabilityChecker()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v0

    .line 37330
    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v6

    .line 37331
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "pDlFeLBfyToKKboIUgGc0hC9I32LVeJD"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "3B6yIVnUpbF0PBycHqRFA1bh2UEjPzxQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v7

    :cond_0
    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 37332
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v0

    .line 37333
    invoke-interface {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VA;->AB7(Ljava/lang/String;Ljava/util/Map;)V

    .line 37334
    :cond_1
    return-void

    .line 37335
    :cond_2
    move-object v0, v7

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0G()V
    .locals 5

    .line 37336
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarActionMode()I

    move-result v1

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 37337
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v3, 0x2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "ALooRHp0AOPErSNB2N5ax0GYeQeSWGkg"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Jojrpwo5bfgl2L1NDhbRQaPRUafbLI0W"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37338
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    add-int/lit8 v1, v0, -0x1

    .line 37339
    .local v0, "index":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/jT;->A2J(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37340
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    .line 37341
    .local v1, "dataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/jd;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "SYmrADrPyc9xENaNAh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "82lRVJ32R9K27GgHKLOx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2S()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressSpinnerInvisible(Z)V

    .line 37342
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/jd;->A2K(Z)V

    .line 37343
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NR;->A0M(I)V

    .line 37344
    .end local v1    # "dataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/jd;
    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0H()V
    .locals 11

    .line 37345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A4w()V

    .line 37346
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A07:Z

    .line 37347
    new-instance v4, Lcom/facebook/ads/redexgen/X/bY;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0E:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    .line 37348
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v9

    iget v10, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/bY;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jT;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;II)V

    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A03:Lcom/facebook/ads/redexgen/X/bY;

    .line 37349
    const/4 v5, 0x0

    .line 37350
    .local v1, "firstBlurredStyle":Lcom/facebook/ads/redexgen/X/dk;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/dk;

    .line 37351
    .local v3, "s":Lcom/facebook/ads/redexgen/X/dk;
    iget v1, v2, Lcom/facebook/ads/redexgen/X/dk;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/dk;->A06:I

    if-ne v1, v0, :cond_0

    .line 37352
    move-object v5, v2

    .line 37353
    :cond_1
    const/4 v4, 0x0

    if-eqz v5, :cond_5

    .line 37354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A03:Lcom/facebook/ads/redexgen/X/bY;

    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/Ge;->A0N(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dk;)V

    .line 37355
    :cond_2
    :goto_0
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ge;->A0W(Z)V

    .line 37356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 37357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    check-cast v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 37358
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_4

    .line 37359
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 37360
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1E()V

    .line 37361
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37362
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A03:Lcom/facebook/ads/redexgen/X/bY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 37363
    const/16 v1, 0x44e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A03:Lcom/facebook/ads/redexgen/X/bY;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 37364
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A03:Lcom/facebook/ads/redexgen/X/bY;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4, v0}, Lcom/facebook/ads/redexgen/X/Ge;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 37365
    return-void

    .line 37366
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "8vyvfMLKM55zirtuKFzVGEL0IOO7sZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "ODibu6eYSRbNQzGgUnvrLUj83p1fS4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 37367
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A03:Lcom/facebook/ads/redexgen/X/bY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/dk;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0N(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dk;)V

    goto :goto_0
.end method

.method public static A0I()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ge;->A0L:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x67t
        -0x18t
        -0x21t
        -0x67t
        -0x1t
        0x22t
        -0x22t
    .end array-data
.end method

.method private final A0J()V
    .locals 2

    .line 37368
    sget-object v1, Lcom/facebook/ads/redexgen/X/Xw;->A03:Lcom/facebook/ads/redexgen/X/Xw;

    .line 37369
    .local v0, "mode":Lcom/facebook/ads/redexgen/X/Xw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0G:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Xx;->A05(Lcom/facebook/ads/redexgen/X/Xw;)V

    .line 37370
    return-void
.end method

.method private declared-synchronized A0K()V
    .locals 2

    monitor-enter p0

    .line 37371
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A6l()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 37372
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A05:Lcom/facebook/ads/redexgen/X/ea;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ea;->A06()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37373
    monitor-exit p0

    return-void

    .line 37374
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ge;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0L(F)V
    .locals 6

    .line 37375
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A01(I)I

    move-result v0

    int-to-float v5, v0

    .line 37376
    .local v0, "unskippableSeconds":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2I()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    int-to-float v2, v0

    add-float/2addr v2, p1

    .line 37377
    .local v2, "seenCurrentPosMS":F
    const/4 v1, 0x0

    cmpl-float v0, v5, v1

    if-lez v0, :cond_2

    .line 37378
    div-float/2addr v2, v5

    .line 37379
    .local v5, "seenPercentage":F
    .restart local v5    # "seenPercentage":F
    :goto_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A06:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37380
    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A06:Z

    .line 37381
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImmediate(F)V

    .line 37382
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgress(F)V

    .line 37383
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A09:Z

    if-nez v0, :cond_1

    .line 37384
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37386
    :cond_1
    return-void

    .line 37387
    .end local v5    # "seenPercentage":F
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    .line 37388
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A01:I

    goto :goto_0
.end method

.method private A0M(I)V
    .locals 2

    .line 37389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Lt;->A4t(I)V

    .line 37390
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37391
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0K()V

    .line 37392
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0F()V

    .line 37393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AB0()V

    .line 37394
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0J:Lcom/facebook/ads/redexgen/X/ZU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/ZU;->A7w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 37395
    return-void
.end method

.method private A0N(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dk;)V
    .locals 4

    .line 37396
    iget v1, p2, Lcom/facebook/ads/redexgen/X/dk;->A00:I

    sget v0, Lcom/facebook/ads/redexgen/X/dk;->A06:I

    if-ne v1, v0, :cond_0

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/dk;->A03:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37397
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/dk;->A03:Ljava/lang/String;

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 37398
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/dk;->A05:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setFullscreen(Z)V

    .line 37399
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    iget-object v1, p2, Lcom/facebook/ads/redexgen/X/dk;->A02:Lcom/facebook/ads/redexgen/X/Na;

    iget-boolean v0, p2, Lcom/facebook/ads/redexgen/X/dk;->A04:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->A0D(Lcom/facebook/ads/redexgen/X/Na;Z)V

    .line 37400
    return-void

    .line 37401
    :cond_0
    iget v3, p2, Lcom/facebook/ads/redexgen/X/dk;->A01:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "6Qw2GncBlIK9qwoUetngT0jkAnHCQL"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "iVxLMdIUnWJTFKOlNtOcmcGRsmSn6x"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {p1, v3}, Lcom/facebook/ads/redexgen/X/YB;->A0N(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0O(Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 2

    .line 37402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    if-eqz v0, :cond_0

    .line 37403
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Ge;->A0b(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    .line 37404
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    check-cast v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 37405
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    .line 37406
    :cond_0
    :goto_0
    return-void

    .line 37407
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    check-cast v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->setOnlyPageDetails(Lcom/facebook/ads/redexgen/X/Nm;)V

    goto :goto_0
.end method

.method private final A0P(Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 2

    .line 37408
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0B:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Re;->A0A(Lcom/facebook/ads/redexgen/X/Rk;)V

    .line 37409
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Re;->A05()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 37410
    .local v0, "orientation":I
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    .line 37411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2D()Z

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/Ge;->A0X(ZI)V

    .line 37412
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0J()V

    .line 37413
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/Ge;)V
    .locals 0

    .line 37414
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0E()V

    return-void
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/Ge;)V
    .locals 0

    .line 37415
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0G()V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Ge;F)V
    .locals 0

    .line 37416
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ge;->A0L(F)V

    return-void
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/Ge;I)V
    .locals 0

    .line 37417
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ge;->A0M(I)V

    return-void
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/Ge;Z)V
    .locals 0

    .line 37418
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ge;->A0W(Z)V

    return-void
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/Ge;ZI)V
    .locals 0

    .line 37419
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ge;->A0X(ZI)V

    return-void
.end method

.method private A0W(Z)V
    .locals 6

    .line 37420
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Z()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Y()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0a()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "abX2oERzf98UggHhJlwc5xOu8ehA434Q"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "mcfqurarHSiAo6r6yfyhrMyo3UPU5OrE"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-nez v5, :cond_3

    const/4 v1, 0x1

    .line 37421
    .local v0, "willShowCombinedEndCards":Z
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Y()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 37422
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37423
    if-eqz p1, :cond_0

    .line 37424
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 37425
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "6hDdRvQvhZI2wvmWyf"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "dfELTL2TgrvtcbRt37j2"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37426
    :goto_1
    return-void

    .line 37427
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "JMDiVFyp4yY8WixxdBAiYWzIdfNljSYZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "DEcXsd0kn675y00aYcKTg0COR2JcG3d3"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "uCb48oA3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "eCwSqnipc7icS"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    goto :goto_1

    .line 37428
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0X(ZI)V
    .locals 7

    .line 37429
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    .line 37430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1E()V

    .line 37431
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->removeAllViews()V

    .line 37432
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 37433
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1c()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 37434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 37435
    const/4 v1, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 37436
    .local v0, "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    sget v1, Lcom/facebook/ads/redexgen/X/XV;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0r:I

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 37437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Ge;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37438
    .end local v0    # "toolbarParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Y()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 37439
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37440
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37441
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ge;->A0H()V

    .line 37442
    return-void

    .line 37443
    :cond_2
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ge;->A0M(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 37444
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "b6hirdpqFqEpTGRF7TvzfLNB23PEQW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "Y5Eb3FssofDa3ImZpKtnPvm2BrdUNN"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-void

    .line 37445
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2I()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37446
    invoke-virtual {p0, v4}, Lcom/facebook/ads/redexgen/X/Ge;->setUnskippableSecondsComplete(Z)V

    .line 37447
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressImmediate(F)V

    .line 37448
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 37449
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A01()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37450
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ge;->A0M:[Ljava/lang/String;

    const-string v1, "SeXhCWKDArfU2xbUHE"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "icHjaKCGoPIgSTYVXjnx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37451
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A28()Ljava/lang/String;

    move-result-object v0

    .line 37452
    invoke-interface {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/T1;->AAM(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 37453
    .local v0, "isLoaded":Z
    if-nez v0, :cond_5

    .line 37454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A4u()V

    .line 37455
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0M(I)V

    .line 37456
    return-void

    .line 37457
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ge;->A0C(ZI)Lcom/facebook/ads/redexgen/X/Ij;

    move-result-object v2

    .line 37458
    .local v3, "contentView":Lcom/facebook/ads/redexgen/X/Ij;
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37459
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A09:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1I(Z)V

    .line 37460
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Ge;->setupToolbarForAd(Lcom/facebook/ads/redexgen/X/Ij;)V

    .line 37461
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ge;->A0N:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v4, v0}, Lcom/facebook/ads/redexgen/X/Ge;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 37462
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37463
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1H()V

    .line 37464
    return-void

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0Y()Z
    .locals 2

    .line 37465
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0Z()Z
    .locals 2

    .line 37466
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A22()I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final A0a()Z
    .locals 1

    .line 37467
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A07:Z

    return v0
.end method

.method public static A0b(Lcom/facebook/ads/redexgen/X/jd;)Z
    .locals 0

    .line 37468
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object p0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/Ge;)Z
    .locals 0

    .line 37469
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A08:Z

    return p0
.end method

.method private setupToolbarForAd(Lcom/facebook/ads/redexgen/X/Ij;)V
    .locals 7

    .line 37514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    if-nez v0, :cond_0

    .line 37515
    return-void

    .line 37516
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Ge;->A06:Z

    .line 37517
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    .line 37518
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/jT;->A27(I)Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v2

    .line 37519
    .local v1, "adDataBundleDataBundleForAdIdx":Lcom/facebook/ads/redexgen/X/jd;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A01(I)I

    move-result v5

    .line 37520
    .local v2, "unskippableSeconds":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    instance-of v0, v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    if-eqz v0, :cond_3

    .line 37521
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    check-cast v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    .line 37522
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A22()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0G(Lcom/facebook/ads/redexgen/X/gi;I)V

    .line 37523
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    check-cast v4, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    .line 37524
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v1

    .line 37525
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 37526
    invoke-virtual {v4, v1, v0, v5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;->A0F(Lcom/facebook/ads/redexgen/X/Nm;Ljava/lang/String;I)V

    .line 37527
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Ij;->getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/dk;

    move-result-object v1

    .line 37528
    .local v3, "fullscreenAdStyle":Lcom/facebook/ads/redexgen/X/dk;
    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ge;->A0N(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dk;)V

    .line 37529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37530
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/16 v0, 0x5a

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x15

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37531
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37532
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 37533
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A08:Z

    if-eqz v0, :cond_2

    .line 37534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 37535
    :cond_2
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/Ge;->A0O(Lcom/facebook/ads/redexgen/X/jd;)V

    .line 37536
    return-void

    .line 37537
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/PU;

    if-eqz v0, :cond_1

    .line 37538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0H:Lcom/facebook/ads/redexgen/X/Yb;

    check-cast v0, Lcom/facebook/ads/redexgen/X/PU;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/PU;->setInitialUnskippableSeconds(I)V

    goto :goto_0
.end method


# virtual methods
.method public final A0d()V
    .locals 2

    .line 37470
    const/4 v1, 0x0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0X(ZI)V

    .line 37471
    return-void
.end method

.method public final A0e()Z
    .locals 2

    .line 37472
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37473
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A23()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    .line 37474
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A2G()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 37475
    .local v0, "shouldShowNextAdOnAdReporting":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 37476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AC1()V

    .line 37477
    :cond_0
    return v1

    .line 37478
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final AAu(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Re;)V
    .locals 2

    .line 37479
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0I:Lcom/facebook/ads/redexgen/X/Yh;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ge;->A0N:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A45(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 37480
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Ge;->A0P(Lcom/facebook/ads/redexgen/X/Re;)V

    .line 37481
    return-void
.end method

.method public final AFA(Z)V
    .locals 1

    .line 37482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    .line 37483
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ij;->A1J(Z)V

    .line 37484
    :cond_0
    return-void
.end method

.method public final AFi(Z)V
    .locals 1

    .line 37485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    .line 37486
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ij;->A1K(Z)V

    .line 37487
    :cond_0
    return-void
.end method

.method public final AIv(Landroid/os/Bundle;)V
    .locals 0

    .line 37488
    return-void
.end method

.method public getContentView()Lcom/facebook/ads/redexgen/X/Ij;
    .locals 1

    .line 37489
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    return-object v0
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .locals 1

    .line 37490
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 37491
    const/4 v0, 0x0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 37492
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37493
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A02:I

    .line 37494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    .line 37495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Ij;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 37496
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/5h;

    if-eqz v0, :cond_1

    .line 37497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/dk;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0N(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/dk;)V

    .line 37498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Ge;->A0O(Lcom/facebook/ads/redexgen/X/jd;)V

    .line 37499
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 37500
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    .line 37501
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1E()V

    .line 37502
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 37503
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0D:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A01()Lcom/facebook/ads/redexgen/X/T1;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0A:Lcom/facebook/ads/redexgen/X/jT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jT;->A28()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/T1;->A4z(Ljava/lang/String;)V

    .line 37504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A0G:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xx;->A03()V

    .line 37505
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 37506
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 0

    .line 37507
    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/ea;)V
    .locals 0

    .line 37508
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A05:Lcom/facebook/ads/redexgen/X/ea;

    .line 37509
    return-void
.end method

.method public setUnskippableSecondsComplete(Z)V
    .locals 2

    .line 37510
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A09:Z

    .line 37511
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    if-eqz v0, :cond_0

    .line 37512
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ge;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Ge;->A09:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A1I(Z)V

    .line 37513
    :cond_0
    return-void
.end method
