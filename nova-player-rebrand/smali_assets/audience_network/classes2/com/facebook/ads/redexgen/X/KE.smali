.class public final Lcom/facebook/ads/redexgen/X/KE;
.super Lcom/facebook/ads/redexgen/X/c3;
.source ""


# static fields
.field public static A0k:[B

.field public static A0l:[Ljava/lang/String;

.field public static final A0m:I

.field public static final A0n:I

.field public static final A0o:I

.field public static final A0p:I

.field public static final A0q:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/os/Handler;

.field public A09:Landroid/view/View;

.field public A0A:Landroid/view/inputmethod/InputMethodManager;

.field public A0B:Landroid/widget/LinearLayout;

.field public A0C:Landroid/widget/LinearLayout;

.field public A0D:Landroid/widget/TextView;

.field public A0E:Lcom/facebook/ads/redexgen/X/jd;

.field public A0F:Lcom/facebook/ads/redexgen/X/Wc;

.field public A0G:Lcom/facebook/ads/redexgen/X/M6;

.field public A0H:Lcom/facebook/ads/redexgen/X/ah;

.field public A0I:Lcom/facebook/ads/redexgen/X/M3;

.field public A0J:Lcom/facebook/ads/redexgen/X/c7;

.field public A0K:Lcom/facebook/ads/redexgen/X/cd;

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public A0T:Z

.field public A0U:Z

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public final A0Z:Landroid/os/Handler;

.field public final A0a:Landroid/view/View;

.field public final A0b:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0c:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0d:Lcom/facebook/ads/redexgen/X/bU;

.field public final A0e:Lcom/facebook/ads/redexgen/X/bh;

.field public final A0f:Lcom/facebook/ads/redexgen/X/bi;

.field public final A0g:Lcom/facebook/ads/redexgen/X/DZ;

.field public final A0h:Ljava/lang/Runnable;

.field public final A0i:Z

.field public final A0j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 885
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fr3Y9tf6ePgTPq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pEcG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "X6n0DjY1D3c56kEYNT7NkudbHULcUpi8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "xLfqb7j3EStc"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2nglUwJ7J1gVDM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "1eQzmRPEbuFcZFemJlVYaDXjMdIAS51D"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "mnsD3rfSZRPYnMaeA3V0PZWjFbonJuRI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JvQjcWyuZKXxmxTpCuNSfYxSgxmPRmOD"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/KE;->A0W()V

    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0E:I

    sput v0, Lcom/facebook/ads/redexgen/X/KE;->A0o:I

    .line 886
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0I:I

    sput v0, Lcom/facebook/ads/redexgen/X/KE;->A0m:I

    .line 887
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0U:I

    sput v0, Lcom/facebook/ads/redexgen/X/KE;->A0q:I

    .line 888
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/KE;->A0n:I

    .line 889
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A05:I

    sput v0, Lcom/facebook/ads/redexgen/X/KE;->A0p:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/c7;)V
    .locals 18

    .line 46100
    const/4 v1, 0x1

    move-object/from16 v12, p1

    move-object/from16 v2, p0

    invoke-direct {v2, v12, v1}, Lcom/facebook/ads/redexgen/X/c3;-><init>(Lcom/facebook/ads/redexgen/X/c7;Z)V

    .line 46101
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A02:I

    .line 46102
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0L:Z

    .line 46103
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0T:Z

    .line 46104
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0V:Z

    .line 46105
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0W:Z

    .line 46106
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0X:Z

    .line 46107
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0U:Z

    .line 46108
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0Y:Z

    .line 46109
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0P:Z

    .line 46110
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0R:Z

    .line 46111
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0Q:Z

    .line 46112
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0O:Z

    .line 46113
    iput v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A07:I

    .line 46114
    iput v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    .line 46115
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0S:Z

    .line 46116
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0Z:Landroid/os/Handler;

    .line 46117
    new-instance v3, Lcom/facebook/ads/redexgen/X/cO;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/cO;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0h:Ljava/lang/Runnable;

    .line 46118
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0N:Z

    .line 46119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A08:Landroid/os/Handler;

    .line 46120
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v6

    const/16 v5, 0xc

    const/16 v4, 0xc

    const/16 v3, 0x1d

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0A:Landroid/view/inputmethod/InputMethodManager;

    .line 46121
    iput-object v12, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46122
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46123
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0c:Lcom/facebook/ads/redexgen/X/VI;

    .line 46124
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c7;->A0E()Lcom/facebook/ads/redexgen/X/DZ;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    .line 46125
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    if-eqz v3, :cond_0

    .line 46126
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46127
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c7;->A03()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0a:Landroid/view/View;

    .line 46128
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v4

    .line 46129
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v5

    .line 46130
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v6

    .line 46131
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v3

    .line 46132
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46133
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v11

    .line 46134
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Mu;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0b:Lcom/facebook/ads/redexgen/X/Mt;

    .line 46135
    new-instance v3, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/KP;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0d:Lcom/facebook/ads/redexgen/X/bU;

    .line 46136
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v4

    .line 46137
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v3

    .line 46138
    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 46139
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/KE;->setupLayoutConfiguration(Z)V

    .line 46140
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/KE;->A0R()V

    .line 46141
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/KE;->A0N()V

    .line 46142
    new-instance v3, Lcom/facebook/ads/redexgen/X/KH;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/KH;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0F:Lcom/facebook/ads/redexgen/X/Wc;

    .line 46143
    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/KE;->A0F:Lcom/facebook/ads/redexgen/X/Wc;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/KE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46144
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/KE;->A0V()V

    .line 46145
    new-instance v3, Lcom/facebook/ads/redexgen/X/KG;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/KG;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0e:Lcom/facebook/ads/redexgen/X/bh;

    .line 46146
    const/4 v14, 0x0

    .line 46147
    .local v2, "videoView":Lcom/facebook/ads/redexgen/X/Ek;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v3, :cond_1

    .line 46148
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/facebook/ads/redexgen/X/Ek;

    .line 46149
    :cond_1
    new-instance v11, Lcom/facebook/ads/redexgen/X/bi;

    iget-object v13, v2, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46150
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v15

    iget-object v5, v2, Lcom/facebook/ads/redexgen/X/KE;->A0e:Lcom/facebook/ads/redexgen/X/bh;

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/view/View;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    aput-object v3, v4, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    aput-object v0, v4, v1

    const/4 v1, 0x3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0a:Landroid/view/View;

    aput-object v0, v4, v1

    move-object/from16 v17, v4

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v17}, Lcom/facebook/ads/redexgen/X/bi;-><init>(Lcom/facebook/ads/redexgen/X/c7;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Ek;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/bh;[Landroid/view/View;)V

    iput-object v11, v2, Lcom/facebook/ads/redexgen/X/KE;->A0f:Lcom/facebook/ads/redexgen/X/bi;

    .line 46151
    if-eqz v14, :cond_3

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1L(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46152
    invoke-virtual {v14}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoImplView()Landroid/view/View;

    move-result-object v3

    .line 46153
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1M(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cP;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/cP;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46154
    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    .line 46155
    :cond_2
    :goto_0
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1m()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0i:Z

    .line 46156
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1z()Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A0j:Z

    .line 46157
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    .line 46158
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v4

    iget-boolean v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A0i:Z

    iget-boolean v1, v2, Lcom/facebook/ads/redexgen/X/KE;->A0j:Z

    .line 46159
    invoke-virtual {v12}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2L()Z

    move-result v0

    .line 46160
    invoke-interface {v4, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACI(ZZZ)V

    .line 46161
    return-void

    .line 46162
    :cond_3
    if-nez v14, :cond_2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 46163
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46164
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    .line 46165
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1K(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/cQ;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/cQ;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46166
    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/bC;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/KE;)F
    .locals 0

    .line 46167
    iget p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/KE;F)F
    .locals 0

    .line 46168
    iput p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/KE;)I
    .locals 0

    .line 46169
    iget p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/KE;)I
    .locals 2

    .line 46170
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    return v1
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/KE;)I
    .locals 0

    .line 46171
    iget p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/KE;)I
    .locals 2

    .line 46172
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:I

    return v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/KE;)Landroid/os/Handler;
    .locals 0

    .line 46173
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A08:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/View;
    .locals 0

    .line 46174
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 46175
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0A:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/Mt;
    .locals 0

    .line 46176
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0b:Lcom/facebook/ads/redexgen/X/Mt;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/jd;
    .locals 0

    .line 46177
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 46178
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0c:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/ah;
    .locals 0

    .line 46179
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/M3;
    .locals 0

    .line 46180
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/c7;
    .locals 0

    .line 46181
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/cd;
    .locals 0

    .line 46182
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/KE;)Lcom/facebook/ads/redexgen/X/DZ;
    .locals 0

    .line 46183
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/KE;)Ljava/lang/Runnable;
    .locals 0

    .line 46184
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0I(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/KE;->A0k:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "BAn7g4Tg6kNh"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "sSvO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x22

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0J()V
    .locals 3

    .line 46185
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46186
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    .line 46187
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0U(Landroid/view/View;Landroid/content/Context;)V

    .line 46188
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46189
    .local v0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46191
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;I)V

    .line 46192
    return-void

    .line 46193
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0K()V
    .locals 3

    .line 46194
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0N:Z

    if-eqz v0, :cond_0

    .line 46195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0N:Z

    .line 46196
    const/16 v2, 0x18

    const/16 v1, 0x12

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0g(Ljava/lang/String;)V

    .line 46197
    :cond_0
    return-void
.end method

.method private A0L()V
    .locals 5

    .line 46198
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0N:Z

    if-eqz v0, :cond_0

    .line 46199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0N:Z

    .line 46200
    new-instance v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    .line 46201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v4

    .line 46202
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x12

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46203
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/VA;->AB6(Ljava/lang/String;Ljava/util/Map;)V

    .line 46204
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private A0M()V
    .locals 2

    .line 46205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1x()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 46207
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    if-eqz v1, :cond_0

    .line 46208
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressSpinnerInvisible(Z)V

    .line 46209
    .end local v0    # "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    :cond_0
    return-void
.end method

.method private A0N()V
    .locals 2

    .line 46210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46211
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    .line 46212
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 46213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46214
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0T()V

    .line 46215
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 46216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;)V

    .line 46217
    return-void
.end method

.method private A0O()V
    .locals 5

    .line 46218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46219
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0a:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46220
    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A09:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46221
    .local v0, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46222
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46223
    sget v3, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:I

    sget v1, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/c3;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0a:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46225
    .end local v0    # "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0P()V
    .locals 5

    .line 46226
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    if-eqz v0, :cond_0

    .line 46227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46228
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    sget v3, Lcom/facebook/ads/redexgen/X/KE;->A0p:I

    sget v2, Lcom/facebook/ads/redexgen/X/KE;->A0p:I

    sget v1, Lcom/facebook/ads/redexgen/X/KE;->A0p:I

    sget v0, Lcom/facebook/ads/redexgen/X/KE;->A0p:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->setPadding(IIII)V

    .line 46229
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    sget v1, Lcom/facebook/ads/redexgen/X/KE;->A0n:I

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A08(IIZ)V

    .line 46230
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->setTranslationY(F)V

    .line 46231
    sget v0, Lcom/facebook/ads/redexgen/X/KE;->A0o:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46232
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46234
    .end local v0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 2

    .line 46235
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    .line 46236
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    if-nez v1, :cond_0

    .line 46237
    return-void

    .line 46238
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0M:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetailsVisible(Z)V

    .line 46239
    return-void

    .line 46240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0R()V
    .locals 11

    .line 46241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    .line 46242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    const/4 v3, -0x2

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 46243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46244
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cR;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46245
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46247
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46248
    .local v0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    invoke-virtual {p0, v0, v4, v1}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 46250
    .end local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    .line 46251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46252
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 46253
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Na;->A06(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46254
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 46255
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46256
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46257
    .local v0, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46258
    sget v3, Lcom/facebook/ads/redexgen/X/KE;->A0q:I

    sget v2, Lcom/facebook/ads/redexgen/X/KE;->A0q:I

    div-int/2addr v2, v1

    sget v1, Lcom/facebook/ads/redexgen/X/KE;->A0q:I

    .line 46259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    if-nez v0, :cond_3

    sget v0, Lcom/facebook/ads/redexgen/X/KE;->A0q:I

    .line 46260
    :goto_0
    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46261
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46263
    new-instance v1, Lcom/facebook/ads/redexgen/X/cd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46264
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    .line 46265
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCtaButton()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46266
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46267
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A07()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46268
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46269
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0F()Lcom/facebook/ads/redexgen/X/fp;

    move-result-object v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46270
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0A()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v8

    .line 46271
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v9

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/KE;->A0d:Lcom/facebook/ads/redexgen/X/bU;

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/cd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/bU;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    .line 46272
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cd;->setAutoClickTime(Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Yb;)V

    .line 46273
    const/16 v1, 0x3f2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 46274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;)V

    .line 46275
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0U()V

    .line 46276
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0J()V

    .line 46277
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46278
    new-instance v1, Lcom/facebook/ads/redexgen/X/cS;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/cS;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46279
    .local v1, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46280
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46281
    new-instance v1, Lcom/facebook/ads/redexgen/X/cT;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/cT;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46282
    .local v2, "onToolbarClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 46283
    .end local v1    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v2    # "onToolbarClickListener":Landroid/view/View$OnClickListener;
    :cond_2
    return-void

    .line 46284
    :cond_3
    sget v0, Lcom/facebook/ads/redexgen/X/KE;->A0o:I

    goto/16 :goto_0
.end method

.method private A0S()V
    .locals 7

    .line 46285
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A0U:Z

    .line 46286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/cd;->setVisibility(I)V

    .line 46287
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/YB;->A0W(Landroid/view/ViewGroup;)V

    .line 46288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0F:Lcom/facebook/ads/redexgen/X/Wc;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 46289
    new-array v1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 46290
    new-array v3, v3, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0g:Lcom/facebook/ads/redexgen/X/DZ;

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0a:Landroid/view/View;

    aput-object v0, v3, v4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0f:Lcom/facebook/ads/redexgen/X/bi;

    aput-object v0, v3, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    aput-object v0, v3, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46291
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/4 v0, 0x5

    aput-object v1, v3, v0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    aput-object v0, v3, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    aput-object v0, v3, v1

    .line 46292
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 46293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 46294
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 46295
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46296
    check-cast v1, Landroid/view/View;

    .line 46297
    .local v1, "parentView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 46298
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 46299
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_2

    .line 46300
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    check-cast v3, Lcom/facebook/ads/redexgen/X/Ek;

    .line 46301
    .local v0, "simpleVideoView":Lcom/facebook/ads/redexgen/X/Ek;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ek;->getPlugins()Ljava/util/List;

    move-result-object v0

    .line 46302
    .local v1, "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/video/common/VideoPlugin;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/eu;

    .line 46303
    .local v3, "plugin":Lcom/facebook/ads/redexgen/X/eu;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/34;

    if-eqz v0, :cond_1

    .line 46304
    invoke-virtual {v3, v1}, Lcom/facebook/ads/redexgen/X/Ek;->A0g(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 46305
    .end local v0    # "simpleVideoView":Lcom/facebook/ads/redexgen/X/Ek;
    .end local v1    # "plugins":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/view/video/common/VideoPlugin;>;"
    :cond_2
    new-instance v1, Lcom/facebook/ads/redexgen/X/cJ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A0c:Lcom/facebook/ads/redexgen/X/VI;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Z:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46307
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/cJ;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VI;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 46308
    .local v0, "interstitialWatchAndBrowseEndCard":Lcom/facebook/ads/redexgen/X/cJ;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->getRegularCtaForEndCard()Lcom/facebook/ads/redexgen/X/Kr;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cJ;->A0C(Lcom/facebook/ads/redexgen/X/Kr;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;)V

    .line 46309
    return-void
.end method

.method private A0T()V
    .locals 5

    .line 46310
    const/4 v1, -0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46311
    .local v0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46312
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46313
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46314
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 46315
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "lVu96jIJ4wtN"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "vEsO"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46316
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 46317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46318
    return-void

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "ao8FhOByUXKbyI2dbjVU10hQSvAA73UK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "1fPkz4yBU6BXLdgQ7SVXdDzzX5ZOz4LN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 46319
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46320
    return-void
.end method

.method private A0U()V
    .locals 3

    .line 46321
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46322
    .local v0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46324
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/cd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cd;->A03()V

    .line 46327
    return-void

    .line 46328
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method private A0V()V
    .locals 1

    .line 46329
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0U:Z

    if-nez v0, :cond_0

    .line 46330
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0P()V

    .line 46331
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0O()V

    .line 46332
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0Q()V

    .line 46333
    return-void
.end method

.method public static A0W()V
    .locals 1

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KE;->A0k:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x44t
        0x41t
        0x4bt
        0x43t
        0x77t
        0x5bt
        0x47t
        0x5dt
        0x5at
        0x4bt
        0x4dt
        0x56t
        0x51t
        0x4ft
        0x4at
        0x4bt
        0x60t
        0x52t
        0x5at
        0x4bt
        0x57t
        0x50t
        0x5bt
        0x6bt
        0x6dt
        0x7bt
        0x6ct
        0x7dt
        0x72t
        0x77t
        0x7dt
        0x75t
        0x41t
        0x78t
        0x77t
        0x72t
        0x6at
        0x7bt
        0x6ct
        0x7bt
        0x7at
        0x62t
        0x7ct
        0x7bt
        0x71t
        0x7at
        0x62t
        0x41t
    .end array-data
.end method

.method public static synthetic A0X(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0

    .line 46334
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0K()V

    return-void
.end method

.method public static synthetic A0Y(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0

    .line 46335
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0T()V

    return-void
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/KE;I)V
    .locals 0

    .line 46336
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->setBrowserProgressBarValue(I)V

    return-void
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V
    .locals 0

    .line 46337
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->setUrlToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V
    .locals 0

    .line 46338
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0h(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V
    .locals 0

    .line 46339
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->setTitleToBrowser(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V
    .locals 0

    .line 46340
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/KE;Z)V
    .locals 0

    .line 46341
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0i(Z)V

    return-void
.end method

.method private A0f(Ljava/lang/String;)V
    .locals 4

    .line 46342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46343
    new-instance v3, Lcom/facebook/ads/redexgen/X/KR;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/KR;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    .line 46344
    .local v0, "browserListener":Lcom/facebook/ads/redexgen/X/aq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46345
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A9v()V

    .line 46346
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46347
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uq;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46348
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 46349
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V

    .line 46350
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    .line 46351
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cL;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M3;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46352
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 46353
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46354
    .local v1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0I:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M3;->loadUrl(Ljava/lang/String;)V

    .line 46357
    return-void

    .line 46358
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46359
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/aq;)V

    goto :goto_0
.end method

.method private A0g(Ljava/lang/String;)V
    .locals 4

    .line 46360
    new-instance v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    .line 46361
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v3

    .line 46362
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0c:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0J:Lcom/facebook/ads/redexgen/X/VH;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 46364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 46365
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VA;->ABM(Ljava/lang/String;Ljava/util/Map;)V

    .line 46366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46367
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 46368
    .local v1, "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A04:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46369
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A05:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46370
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46371
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46372
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A06:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 46373
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46374
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46375
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46376
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 46377
    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABn(Ljava/lang/String;Ljava/util/Map;)V

    .line 46378
    .end local v1    # "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private A0h(Ljava/lang/String;)V
    .locals 1

    .line 46379
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v0

    if-lez v0, :cond_1

    .line 46380
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0O:Z

    if-eqz v0, :cond_0

    .line 46381
    return-void

    .line 46382
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0O:Z

    .line 46383
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->A0g(Ljava/lang/String;)V

    goto :goto_0

    .line 46384
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46385
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0K()V

    .line 46386
    :cond_2
    :goto_0
    return-void
.end method

.method private A0i(Z)V
    .locals 11

    .line 46387
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46388
    return-void

    .line 46389
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0M:Z

    .line 46390
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_6

    .line 46391
    iput v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A01:I

    .line 46392
    iput v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A07:I

    .line 46393
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A0P:Z

    .line 46394
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Q:Z

    .line 46395
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A0R:Z

    .line 46396
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/KE;->A0O:Z

    .line 46397
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0m()Z

    move-result v0

    xor-int/2addr v0, v7

    .line 46398
    invoke-direct {p0, v0, v5}, Lcom/facebook/ads/redexgen/X/KE;->A0k(ZI)V

    .line 46399
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0M()V

    .line 46400
    :goto_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0S:Z

    if-nez v0, :cond_1

    .line 46401
    new-instance v2, Lcom/facebook/ads/redexgen/X/KQ;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/KQ;-><init>(Lcom/facebook/ads/redexgen/X/KE;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46402
    :cond_1
    const/16 v2, 0x30

    const/4 v1, 0x1

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    if-eqz p1, :cond_2

    .line 46403
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    .line 46404
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cd;->getY()F

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    new-array v0, v10, [F

    aput v2, v0, v5

    aput v1, v0, v7

    .line 46405
    invoke-static {v3, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 46406
    .local v0, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    .line 46407
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    .line 46408
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    if-eqz p1, :cond_3

    div-int/lit8 v0, v0, 0x5

    :cond_3
    int-to-float v1, v0

    new-array v0, v10, [F

    aput v2, v0, v5

    aput v1, v0, v7

    .line 46409
    invoke-static {v3, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 46410
    .local v5, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v9, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 46412
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    .line 46413
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    new-array v3, v10, [F

    aput v0, v3, v5

    const/4 v0, 0x0

    aput v0, v3, v7

    invoke-static {v4, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 46414
    .local v3, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    .line 46416
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 46417
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    if-eqz p1, :cond_4

    div-int/lit8 v0, v0, 0x5

    :cond_4
    filled-new-array {v3, v0}, [I

    move-result-object v0

    .line 46418
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 46419
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 46420
    .local v8, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/cM;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cM;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46421
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 46422
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 46423
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v9, v0, v5

    aput-object v8, v0, v7

    aput-object v4, v0, v10

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 46424
    if-eqz v6, :cond_5

    .line 46425
    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 46426
    new-array v0, v7, [Landroid/animation/Animator;

    aput-object v6, v0, v5

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 46427
    :cond_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/cN;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/cN;-><init>(Lcom/facebook/ads/redexgen/X/KE;Z)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46428
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0j:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    instance-of v4, v0, Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_7

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46429
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A08:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "kmPKPZPxIo82"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "o2de"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v4, :cond_8

    .line 46430
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0c(Landroid/animation/AnimatorSet;Z)V

    .line 46431
    :cond_8
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 46432
    .end local v3    # "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    .end local v8    # "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    .end local v9    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_9
    return-void
.end method

.method private A0j(Z)V
    .locals 5

    .line 46433
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/KE;->setupLayoutConfiguration(Z)V

    .line 46434
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46435
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46436
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    .line 46437
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46438
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/KE;->A0M:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "vsQMzuL85pElT0uyLkCOYkbLp6FYZ6Kp"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "Jg0wEDfumSgIDDBadFZcUW5HjHx0Xq4t"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, -0x1

    if-eqz v3, :cond_3

    .line 46439
    iget v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    div-int/lit8 v2, v1, 0x5

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46440
    .local v0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46441
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46442
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 46443
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 46444
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/KE;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 46445
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0J()V

    .line 46446
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0U()V

    .line 46447
    return-void

    .line 46448
    .end local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46449
    .restart local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Up;->A1J(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 46450
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    instance-of v2, v2, Lcom/facebook/ads/redexgen/X/Ek;

    if-nez v2, :cond_4

    .line 46451
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46452
    :cond_4
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 46453
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0N()V

    goto :goto_0
.end method

.method private A0k(ZI)V
    .locals 4

    .line 46454
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0i:Z

    if-eqz v0, :cond_2

    .line 46455
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setCloseButtonVisibility(I)V

    .line 46456
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46457
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "GBT9VwLYKrAlXj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "vffPPOX2qjrj4g"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    xor-int/lit8 v0, p1, 0x1

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->ACG(ZI)V

    .line 46458
    :cond_2
    return-void
.end method

.method private A0l()Z
    .locals 1

    .line 46459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0X:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Y:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0V:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m()Z
    .locals 1

    .line 46460
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0i:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/KE;)Z
    .locals 0

    .line 46461
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0M:Z

    return p0
.end method

.method public static synthetic A0o(Lcom/facebook/ads/redexgen/X/KE;)Z
    .locals 0

    .line 46462
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0T:Z

    return p0
.end method

.method public static synthetic A0p(Lcom/facebook/ads/redexgen/X/KE;)Z
    .locals 0

    .line 46463
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0R:Z

    return p0
.end method

.method public static synthetic A0q(Lcom/facebook/ads/redexgen/X/KE;)Z
    .locals 0

    .line 46464
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Q:Z

    return p0
.end method

.method public static synthetic A0r(Lcom/facebook/ads/redexgen/X/KE;)Z
    .locals 0

    .line 46465
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0P:Z

    return p0
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/KE;)Z
    .locals 0

    .line 46466
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Y:Z

    return p0
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/KE;Z)Z
    .locals 0

    .line 46467
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0T:Z

    return p1
.end method

.method public static synthetic A0u(Lcom/facebook/ads/redexgen/X/KE;Z)Z
    .locals 0

    .line 46468
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0R:Z

    return p1
.end method

.method public static synthetic A0v(Lcom/facebook/ads/redexgen/X/KE;Z)Z
    .locals 0

    .line 46469
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Q:Z

    return p1
.end method

.method public static synthetic A0w(Lcom/facebook/ads/redexgen/X/KE;Z)Z
    .locals 0

    .line 46470
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0P:Z

    return p1
.end method

.method public static synthetic A0x(Lcom/facebook/ads/redexgen/X/KE;Z)Z
    .locals 0

    .line 46471
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Y:Z

    return p1
.end method

.method public static synthetic A0y(Lcom/facebook/ads/redexgen/X/KE;Z)Z
    .locals 0

    .line 46472
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0N:Z

    return p1
.end method

.method private getRegularCtaForEndCard()Lcom/facebook/ads/redexgen/X/Kr;
    .locals 13

    .line 46558
    new-instance v4, Lcom/facebook/ads/redexgen/X/Kr;

    .line 46559
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46560
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A05()Lcom/facebook/ads/redexgen/X/jd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46561
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v7

    .line 46562
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdEventManager()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46563
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0C()Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46564
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0A()Lcom/facebook/ads/redexgen/X/Y2;

    move-result-object v11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46565
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v12

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/Kr;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Ng;)V

    .line 46566
    .local v0, "button":Lcom/facebook/ads/redexgen/X/Kr;
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/bb;->setViewShowsOverMedia(Z)V

    .line 46567
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/bb;->setText(Ljava/lang/String;)V

    .line 46569
    const/16 v0, 0x3e9

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 46570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46571
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46572
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46573
    const/4 v0, 0x0

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kr;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 46574
    return-object v4
.end method

.method private setBrowserProgressBarValue(I)V
    .locals 1

    .line 46588
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    if-eqz v0, :cond_0

    .line 46589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ah;->setProgress(I)V

    .line 46590
    :cond_0
    return-void
.end method

.method private setTitleToBrowser(Ljava/lang/String;)V
    .locals 1

    .line 46596
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    if-eqz v0, :cond_0

    .line 46597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->setTitle(Ljava/lang/String;)V

    .line 46598
    :cond_0
    return-void
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V
    .locals 5

    .line 46599
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46600
    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46601
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v2

    iget-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0j:Z

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {v0, v2, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    .line 46602
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0i:Z

    if-eqz v0, :cond_1

    .line 46603
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "M6ycP1RHJpeE8b"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ycEZieyXOIyeai"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, v3, v4}, Lcom/facebook/ads/redexgen/X/KE;->A0k(ZI)V

    .line 46604
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/M3;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ar;)V

    .line 46605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 46606
    const/4 v0, -0x2

    const/4 v4, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46607
    .local v0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 46608
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/KS;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setListener(Lcom/facebook/ads/redexgen/X/au;)V

    .line 46609
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/cK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cK;-><init>(Lcom/facebook/ads/redexgen/X/KE;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 46610
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 46612
    nop

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    .line 46613
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    .line 46614
    sget v0, Lcom/facebook/ads/redexgen/X/KE;->A0m:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46615
    .local v1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0H:Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46616
    return-void
.end method

.method private setUrlToBrowser(Ljava/lang/String;)V
    .locals 1

    .line 46617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    if-eqz v0, :cond_0

    .line 46618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0G:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->setUrl(Ljava/lang/String;)V

    .line 46619
    :cond_0
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 5

    .line 46620
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne v2, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0L:Z

    .line 46621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    iput v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A06:I

    .line 46622
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0M:Z

    .line 46623
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    .line 46624
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:I

    .line 46625
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 46626
    .local v0, "size":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v4

    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0I(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 46627
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 46628
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_2

    .line 46629
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 46630
    .local v2, "windowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 46631
    .end local v2    # "windowMetrics":Landroid/view/WindowMetrics;
    .end local v2
    :cond_0
    :goto_2
    iget v0, v3, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_1

    iget v0, v3, Landroid/graphics/Point;->y:I

    :goto_3
    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A04:I

    .line 46632
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:I

    .line 46633
    return-void

    .line 46634
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    goto :goto_3

    .line 46635
    :cond_2
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 46636
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_2

    .line 46637
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Yb;->getToolbarHeight()I

    move-result v1

    goto :goto_1

    .line 46638
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 46473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cd;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    return-object v0
.end method

.method public final A1C()V
    .locals 2

    .line 46474
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0Z:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46475
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0L()V

    .line 46476
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->A1C()V

    .line 46477
    return-void
.end method

.method public final A1D()V
    .locals 3

    .line 46478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v2

    .line 46479
    .local v0, "toolbar":Lcom/facebook/ads/redexgen/X/Yb;
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 46480
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Yb;->A0E()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetailsVisible(Z)V

    .line 46481
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0X:Z

    .line 46482
    return-void

    .line 46483
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1E()V
    .locals 2

    .line 46484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A0B()Lcom/facebook/ads/redexgen/X/Yb;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setPageDetailsVisible(Z)V

    .line 46486
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0X:Z

    .line 46487
    return-void
.end method

.method public final A1F()V
    .locals 2

    .line 46488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0V:Z

    .line 46489
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0W:Z

    .line 46490
    const/4 v1, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0k(ZI)V

    .line 46491
    return-void
.end method

.method public final A1G()V
    .locals 3

    .line 46492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46493
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A04()I

    move-result v0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0V:Z

    .line 46494
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/KE;->A0W:Z

    .line 46495
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0k(ZI)V

    .line 46496
    return-void

    .line 46497
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 5

    .line 46498
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/c3;->A1H(Lcom/facebook/ads/redexgen/X/NR;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 46499
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A0K:Lcom/facebook/ads/redexgen/X/cd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46500
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    .line 46501
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0d:Lcom/facebook/ads/redexgen/X/bU;

    .line 46502
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cd;->setCta(Lcom/facebook/ads/redexgen/X/Nc;Ljava/lang/String;Ljava/util/HashMap;Lcom/facebook/ads/redexgen/X/bU;)V

    .line 46503
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0F()Ljava/lang/String;

    move-result-object v1

    .line 46504
    .local v0, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 46505
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 46506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46507
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 46508
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_2

    .line 46509
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A05:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:I

    .line 46510
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0L:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A03:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:I

    .line 46511
    return-void

    .line 46512
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A02:I

    goto :goto_1

    .line 46513
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0J:Lcom/facebook/ads/redexgen/X/c7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/c7;->A06()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46515
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/KE;->A0C:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/KE;->A0l:[Ljava/lang/String;

    const-string v1, "eomTAZA5kOTO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "I37n"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A1I(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 1

    .line 46516
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->A1I(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 46517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46518
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0S()V

    .line 46520
    :cond_0
    return-void
.end method

.method public final A1N()Z
    .locals 1

    .line 46521
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A1O()Z
    .locals 1

    .line 46522
    const/4 v0, 0x1

    return v0
.end method

.method public final A1P(Z)Z
    .locals 3

    .line 46523
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 46524
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACF()V

    .line 46525
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/KE;->A0i(Z)V

    .line 46526
    return v1

    .line 46527
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46528
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACJ()V

    .line 46529
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0f:Lcom/facebook/ads/redexgen/X/bi;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/bi;->A07(Landroid/view/ViewGroup;)V

    .line 46530
    return v1

    .line 46531
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A04()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46532
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACK()V

    .line 46533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Ek;

    if-eqz v0, :cond_2

    .line 46534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A09:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ek;

    .line 46535
    .local v0, "simpleVideoView":Lcom/facebook/ads/redexgen/X/Ek;
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->A0h(Z)V

    .line 46536
    .end local v0    # "simpleVideoView":Lcom/facebook/ads/redexgen/X/Ek;
    :cond_2
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0S()V

    .line 46537
    return v1

    .line 46538
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/c3;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACH()V

    .line 46539
    return v2
.end method

.method public final A1Q()Z
    .locals 1

    .line 46540
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0M:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 2

    .line 46541
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 46542
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46543
    return v1

    .line 46544
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 46545
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v0

    if-ltz v0, :cond_3

    .line 46546
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1N()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46547
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0V:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0X:Z

    if-eqz v0, :cond_3

    .line 46548
    :cond_2
    const/16 v0, 0x8

    return v0

    .line 46549
    :cond_3
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0V:Z

    if-eqz v0, :cond_4

    .line 46550
    return v1

    .line 46551
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A0B()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 46552
    return v1

    .line 46553
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0X:Z

    if-eqz v0, :cond_6

    .line 46554
    const/4 v0, 0x4

    return v0

    .line 46555
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0E:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A04()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 46556
    return v1

    .line 46557
    :cond_7
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/c3;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 46575
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/c3;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 46576
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0j(Z)V

    .line 46577
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0V()V

    .line 46578
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->A1Q()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/KE;->setupLayoutConfiguration(Z)V

    .line 46579
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KE;->A0T()V

    .line 46580
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0U:Z

    if-eqz v0, :cond_0

    .line 46581
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt v1, v0, :cond_0

    .line 46582
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/KE;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 46583
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v0, v1, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 46584
    check-cast v1, Landroid/view/View;

    .line 46585
    .local v1, "parentView":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 46586
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 46587
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "parentView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setChainedWatchAndBrowseSkippableStatus(Z)V
    .locals 1

    .line 46591
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KE;->A0W:Z

    .line 46592
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0k(ZI)V

    .line 46593
    return-void
.end method

.method public setChildChainedAd(Z)V
    .locals 0

    .line 46594
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/KE;->A0S:Z

    .line 46595
    return-void
.end method
