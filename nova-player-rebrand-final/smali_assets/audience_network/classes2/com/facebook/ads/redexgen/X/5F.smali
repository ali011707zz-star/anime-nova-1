.class public final Lcom/facebook/ads/redexgen/X/5F;
.super Lcom/facebook/ads/redexgen/X/Ij;
.source ""


# static fields
.field public static A0o:[B

.field public static A0p:[Ljava/lang/String;

.field public static final A0q:I

.field public static final A0r:I

.field public static final A0s:I

.field public static final A0t:I

.field public static final A0u:I

.field public static final A0v:I

.field public static final A0w:I

.field public static final A0x:I


# instance fields
.field public A00:F

.field public A01:F

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:Landroid/os/Handler;

.field public A09:Landroid/view/inputmethod/InputMethodManager;

.field public A0A:Landroid/widget/LinearLayout;

.field public A0B:Landroid/widget/LinearLayout;

.field public A0C:Landroid/widget/TextView;

.field public A0D:Lcom/facebook/ads/redexgen/X/Na;

.field public A0E:Lcom/facebook/ads/redexgen/X/M6;

.field public A0F:Lcom/facebook/ads/redexgen/X/ah;

.field public A0G:Lcom/facebook/ads/redexgen/X/M3;

.field public A0H:Lcom/facebook/ads/redexgen/X/cd;

.field public A0I:Lcom/facebook/ads/redexgen/X/et;

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public A0M:Z

.field public A0N:Z

.field public A0O:Z

.field public A0P:Z

.field public A0Q:Z

.field public A0R:Z

.field public A0S:Z

.field public A0T:Z

.field public final A0U:I

.field public final A0V:Lcom/facebook/ads/redexgen/X/Mt;

.field public final A0W:Lcom/facebook/ads/redexgen/X/gi;

.field public final A0X:Lcom/facebook/ads/redexgen/X/VI;

.field public final A0Y:Lcom/facebook/ads/redexgen/X/Yb;

.field public final A0Z:Lcom/facebook/ads/redexgen/X/dm;

.field public final A0a:Lcom/facebook/ads/redexgen/X/Eu;

.field public final A0b:Lcom/facebook/ads/redexgen/X/Ek;

.field public final A0c:Lcom/facebook/ads/redexgen/X/4L;

.field public final A0d:Lcom/facebook/ads/redexgen/X/EA;

.field public final A0e:Lcom/facebook/ads/redexgen/X/E8;

.field public final A0f:Lcom/facebook/ads/redexgen/X/E4;

.field public final A0g:Lcom/facebook/ads/redexgen/X/E2;

.field public final A0h:Lcom/facebook/ads/redexgen/X/E0;

.field public final A0i:Lcom/facebook/ads/redexgen/X/Dz;

.field public final A0j:Lcom/facebook/ads/redexgen/X/Df;

.field public final A0k:Lcom/facebook/ads/redexgen/X/DZ;

.field public final A0l:Ljava/lang/Runnable;

.field public final A0m:Z

.field public final A0n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 377
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "uilIZmuHzpP0N9Y8quer6Kb2u"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9UUD4l8CpJqeXgkdEQyriIYmJbPiqOP7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EZE4mnuFogdbCIqsVVCLHtYnmK0aZj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "syebs7ncPc1rj4O1rMWtVdBIydy8e5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8mpGklwdfsm8yo"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "l0wQPHeYLTHnG4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "V5rJxyMt8frjvUGIYtzHbFROecFIJypl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "I99F1f62ejGluaFUQtWt4OKUQ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5F;->A0X()V

    const/high16 v1, 0x40800000    # 4.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0q:I

    .line 378
    sget v1, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0r:I

    .line 379
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A02(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0s:I

    .line 380
    const/high16 v1, 0x41d00000    # 26.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0w:I

    .line 381
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0x:I

    .line 382
    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0u:I

    .line 383
    const/high16 v1, 0x42300000    # 44.0f

    sget v0, Lcom/facebook/ads/redexgen/X/XX;->A02:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0v:I

    .line 384
    sget v0, Lcom/facebook/ads/redexgen/X/XV;->A0v:I

    sput v0, Lcom/facebook/ads/redexgen/X/5F;->A0t:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yb;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/ZU;ILcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/VI;IZZLcom/facebook/ads/redexgen/X/dm;II)V
    .locals 18

    .line 14130
    move-object/from16 v1, p0

    move-object/from16 v5, p0

    move-object/from16 v2, p1

    move-object v6, v2

    move/from16 v14, p15

    move/from16 v12, p12

    move/from16 v11, p11

    move-object/from16 v13, p8

    move/from16 v10, p7

    move-object/from16 v7, p6

    move-object/from16 v9, p4

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v14}, Lcom/facebook/ads/redexgen/X/Ij;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/ZU;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/jd;IZZLcom/facebook/ads/redexgen/X/Yh;I)V

    .line 14131
    const/4 v4, 0x0

    iput v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A03:I

    .line 14132
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0J:Z

    .line 14133
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0Q:Z

    .line 14134
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0N:Z

    .line 14135
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0P:Z

    .line 14136
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0O:Z

    .line 14137
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0M:Z

    .line 14138
    iput v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A07:I

    .line 14139
    iput v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A02:I

    .line 14140
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/5F;->A0R:Z

    .line 14141
    new-instance v3, Lcom/facebook/ads/redexgen/X/dX;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/dX;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0l:Ljava/lang/Runnable;

    .line 14142
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0L:Z

    .line 14143
    iput-boolean v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0T:Z

    .line 14144
    const/4 v3, 0x0

    iput v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A01:F

    .line 14145
    new-instance v3, Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/5R;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0h:Lcom/facebook/ads/redexgen/X/E0;

    .line 14146
    new-instance v3, Lcom/facebook/ads/redexgen/X/5P;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/5P;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0g:Lcom/facebook/ads/redexgen/X/E2;

    .line 14147
    new-instance v3, Lcom/facebook/ads/redexgen/X/5M;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/5M;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0f:Lcom/facebook/ads/redexgen/X/E4;

    .line 14148
    new-instance v3, Lcom/facebook/ads/redexgen/X/5K;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/5K;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0i:Lcom/facebook/ads/redexgen/X/Dz;

    .line 14149
    new-instance v3, Lcom/facebook/ads/redexgen/X/5J;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/5J;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0d:Lcom/facebook/ads/redexgen/X/EA;

    .line 14150
    new-instance v3, Lcom/facebook/ads/redexgen/X/5G;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/5G;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0e:Lcom/facebook/ads/redexgen/X/E8;

    .line 14151
    move-object/from16 v3, p3

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0Y:Lcom/facebook/ads/redexgen/X/Yb;

    .line 14152
    move/from16 v3, p14

    iput v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0U:I

    .line 14153
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A08:Landroid/os/Handler;

    .line 14154
    const/16 v6, 0xc

    const/16 v5, 0xc

    const/16 v3, 0x1c

    invoke-static {v6, v5, v3}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A09:Landroid/view/inputmethod/InputMethodManager;

    .line 14155
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v12

    .line 14156
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0J()Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Nc;->A05()Ljava/lang/String;

    move-result-object v3

    .line 14157
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 14158
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A2A()Lcom/facebook/ads/redexgen/X/Ng;

    move-result-object v17

    .line 14159
    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v10, v2

    move-object v11, v8

    invoke-static/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/Mu;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v3

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0V:Lcom/facebook/ads/redexgen/X/Mt;

    .line 14160
    iput-object v2, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14161
    move-object/from16 v3, p9

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0X:Lcom/facebook/ads/redexgen/X/VI;

    .line 14162
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/5F;->A0X:Lcom/facebook/ads/redexgen/X/VI;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Df;

    invoke-direct {v3, v6, v5}, Lcom/facebook/ads/redexgen/X/Df;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VI;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0j:Lcom/facebook/ads/redexgen/X/Df;

    .line 14163
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v5, -0x1

    new-instance v3, Lcom/facebook/ads/redexgen/X/DZ;

    invoke-direct {v3, v6, v5}, Lcom/facebook/ads/redexgen/X/DZ;-><init>(Lcom/facebook/ads/redexgen/X/gi;I)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0k:Lcom/facebook/ads/redexgen/X/DZ;

    .line 14164
    move-object/from16 v3, p13

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0Z:Lcom/facebook/ads/redexgen/X/dm;

    .line 14165
    move/from16 v3, p10

    if-ne v3, v0, :cond_2

    .line 14166
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v3

    .line 14167
    :goto_0
    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0D:Lcom/facebook/ads/redexgen/X/Na;

    .line 14168
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ek;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/Ek;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14169
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14170
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v7

    const/4 v3, 0x6

    new-array v6, v3, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0h:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v3, v6, v4

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0g:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v3, v6, v0

    const/4 v5, 0x2

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0f:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v3, v6, v5

    const/4 v5, 0x3

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0i:Lcom/facebook/ads/redexgen/X/Dz;

    aput-object v3, v6, v5

    const/4 v5, 0x4

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0d:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v3, v6, v5

    const/4 v5, 0x5

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0e:Lcom/facebook/ads/redexgen/X/E8;

    aput-object v3, v6, v5

    .line 14171
    invoke-virtual {v7, v6}, Lcom/facebook/ads/redexgen/X/UM;->A03([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 14172
    iget-object v6, v1, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14173
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lcom/facebook/ads/redexgen/X/4L;

    invoke-direct {v3, v2, v8, v6, v5}, Lcom/facebook/ads/redexgen/X/4L;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;)V

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0c:Lcom/facebook/ads/redexgen/X/4L;

    .line 14174
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5F;->A0U()V

    .line 14175
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v3

    .line 14176
    .local v3, "videoUrl":Ljava/lang/String;
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    move-object/from16 v6, p5

    invoke-virtual {v6, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/Ek;->setVideoURI(Ljava/lang/String;)V

    .line 14177
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5F;->A0R()V

    .line 14178
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5F;->A0O()V

    .line 14179
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5F;->A0N()V

    .line 14180
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14181
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v3

    .line 14182
    invoke-static {v5, v1, v3}, Lcom/facebook/ads/redexgen/X/br;->A00(Lcom/facebook/ads/redexgen/X/gi;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 14183
    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/5F;->setupLayoutConfiguration(Z)V

    .line 14184
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5F;->A0T()V

    .line 14185
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/5F;->A0S()V

    .line 14186
    new-instance v5, Lcom/facebook/ads/redexgen/X/Hs;

    invoke-direct {v5, v1}, Lcom/facebook/ads/redexgen/X/Hs;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/5F;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14187
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14188
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14189
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v5

    iget-object v4, v1, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14190
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKn(Landroid/view/View;Ljava/lang/String;Z)V

    .line 14191
    :cond_0
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Up;->A20(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14192
    new-instance v10, Lcom/facebook/ads/redexgen/X/Eu;

    iget-object v11, v1, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v13, v1, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14193
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v14

    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0c:Lcom/facebook/ads/redexgen/X/4L;

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v12, v8

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v17}, Lcom/facebook/ads/redexgen/X/Eu;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ek;Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/EF;Ljava/util/Map;)V

    iput-object v10, v1, Lcom/facebook/ads/redexgen/X/5F;->A0a:Lcom/facebook/ads/redexgen/X/Eu;

    .line 14194
    :goto_1
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/ads/redexgen/X/5F;->A0Y(Lcom/facebook/ads/redexgen/X/NR;)V

    .line 14195
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NQ;->A1m()Z

    move-result v3

    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0m:Z

    .line 14196
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NQ;->A1z()Z

    move-result v3

    iput-boolean v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0n:Z

    .line 14197
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    iget-boolean v2, v1, Lcom/facebook/ads/redexgen/X/5F;->A0m:Z

    iget-boolean v1, v1, Lcom/facebook/ads/redexgen/X/5F;->A0n:Z

    .line 14198
    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->ACI(ZZZ)V

    .line 14199
    return-void

    .line 14200
    :cond_1
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/facebook/ads/redexgen/X/5F;->A0a:Lcom/facebook/ads/redexgen/X/Eu;

    goto :goto_1

    .line 14201
    :cond_2
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/NN;->A00()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5F;)F
    .locals 0

    .line 14202
    iget p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/5F;)F
    .locals 0

    .line 14203
    iget p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A01:F

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/5F;F)F
    .locals 0

    .line 14204
    iput p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A00:F

    return p1
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/5F;F)F
    .locals 1

    .line 14205
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A01:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A01:F

    return v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/5F;)I
    .locals 0

    .line 14206
    iget p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A02:I

    return p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/5F;)I
    .locals 2

    .line 14207
    iget v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A02:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A02:I

    return v1
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/5F;)I
    .locals 0

    .line 14208
    iget p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A07:I

    return p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/5F;)I
    .locals 2

    .line 14209
    iget v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A07:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A07:I

    return v1
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/5F;)Landroid/os/Handler;
    .locals 0

    .line 14210
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A08:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/5F;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 14211
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A09:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Mt;
    .locals 0

    .line 14212
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0V:Lcom/facebook/ads/redexgen/X/Mt;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/gi;
    .locals 0

    .line 14213
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/VI;
    .locals 0

    .line 14214
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0X:Lcom/facebook/ads/redexgen/X/VI;

    return-object p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Yb;
    .locals 0

    .line 14215
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Y:Lcom/facebook/ads/redexgen/X/Yb;

    return-object p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/M6;
    .locals 0

    .line 14216
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    return-object p0
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/ah;
    .locals 0

    .line 14217
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0F:Lcom/facebook/ads/redexgen/X/ah;

    return-object p0
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/M3;
    .locals 0

    .line 14218
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    return-object p0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/cd;
    .locals 0

    .line 14219
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    return-object p0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/dm;
    .locals 0

    .line 14220
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Z:Lcom/facebook/ads/redexgen/X/dm;

    return-object p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/5F;)Lcom/facebook/ads/redexgen/X/Ek;
    .locals 0

    .line 14221
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    return-object p0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/5F;)Ljava/lang/Runnable;
    .locals 0

    .line 14222
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0l:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5F;->A0o:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x37

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0M()V
    .locals 3

    .line 14223
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14224
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    .line 14225
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0U(Landroid/view/View;Landroid/content/Context;)V

    .line 14226
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0J:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14227
    .local v0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;I)V

    .line 14230
    return-void

    .line 14231
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0N()V
    .locals 6

    .line 14232
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0k:Lcom/facebook/ads/redexgen/X/DZ;

    sget v1, Lcom/facebook/ads/redexgen/X/5F;->A0s:I

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->A08(IIZ)V

    .line 14233
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5F;->A0k:Lcom/facebook/ads/redexgen/X/DZ;

    sget v3, Lcom/facebook/ads/redexgen/X/5F;->A0x:I

    sget v2, Lcom/facebook/ads/redexgen/X/5F;->A0x:I

    sget v1, Lcom/facebook/ads/redexgen/X/5F;->A0x:I

    sget v0, Lcom/facebook/ads/redexgen/X/5F;->A0x:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/DZ;->setPadding(IIII)V

    .line 14234
    sget v0, Lcom/facebook/ads/redexgen/X/5F;->A0w:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14235
    .local v0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0k:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14237
    return-void
.end method

.method private A0O()V
    .locals 5

    .line 14238
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5F;->A0j:Lcom/facebook/ads/redexgen/X/Df;

    sget v3, Lcom/facebook/ads/redexgen/X/5F;->A0u:I

    sget v2, Lcom/facebook/ads/redexgen/X/5F;->A0u:I

    sget v1, Lcom/facebook/ads/redexgen/X/5F;->A0u:I

    sget v0, Lcom/facebook/ads/redexgen/X/5F;->A0u:I

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Df;->setPadding(IIII)V

    .line 14239
    sget v1, Lcom/facebook/ads/redexgen/X/5F;->A0v:I

    sget v0, Lcom/facebook/ads/redexgen/X/5F;->A0v:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14240
    .local v0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v2, Lcom/facebook/ads/redexgen/X/Yb;->A00:I

    sget v1, Lcom/facebook/ads/redexgen/X/5F;->A0t:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14241
    const/16 v0, 0xb

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14242
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14243
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14244
    .local v1, "videoViewParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0j:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14246
    return-void
.end method

.method private A0P()V
    .locals 3

    .line 14247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0L:Z

    if-eqz v0, :cond_0

    .line 14248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0L:Z

    .line 14249
    const/16 v2, 0x18

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0h(Ljava/lang/String;)V

    .line 14250
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 5

    .line 14251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0L:Z

    if-eqz v0, :cond_0

    .line 14252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0L:Z

    .line 14253
    new-instance v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    .line 14254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v4

    .line 14255
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x18

    const/16 v1, 0x12

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14256
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/VA;->AB6(Ljava/lang/String;Ljava/util/Map;)V

    .line 14257
    .end local v0    # "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private A0R()V
    .locals 3

    .line 14258
    new-instance v2, Lcom/facebook/ads/redexgen/X/Hv;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/Hv;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14259
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A0P(Landroid/content/Context;)I

    move-result v0

    int-to-long v0, v0

    .line 14260
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5F;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14261
    return-void
.end method

.method private A0S()V
    .locals 2

    .line 14262
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14263
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    .line 14264
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14265
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 14266
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0V()V

    .line 14267
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 14268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;)V

    .line 14269
    return-void
.end method

.method private A0T()V
    .locals 10

    .line 14270
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14271
    .local v0, "mMediaView":Landroid/view/View;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14272
    new-instance v0, Lcom/facebook/ads/redexgen/X/dZ;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dZ;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14273
    :cond_0
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14274
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 14275
    const/4 v3, -0x1

    const/4 v2, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14276
    .local v1, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14277
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14278
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    .line 14279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 14280
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 14281
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5F;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Na;->A06(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 14282
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 14283
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 14284
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14285
    .local v2, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14286
    sget v3, Lcom/facebook/ads/redexgen/X/5F;->A0r:I

    sget v2, Lcom/facebook/ads/redexgen/X/5F;->A0r:I

    div-int/2addr v2, v1

    sget v1, Lcom/facebook/ads/redexgen/X/5F;->A0r:I

    sget v0, Lcom/facebook/ads/redexgen/X/5F;->A0w:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14288
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 14289
    new-instance v0, Lcom/facebook/ads/redexgen/X/cd;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    .line 14290
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5F;->getColors()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v8

    new-instance v9, Lcom/facebook/ads/redexgen/X/I4;

    invoke-direct {v9, p0}, Lcom/facebook/ads/redexgen/X/I4;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/facebook/ads/redexgen/X/cd;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Kr;Lcom/facebook/ads/redexgen/X/jd;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/Na;Lcom/facebook/ads/redexgen/X/bU;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    .line 14291
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0G(ILandroid/view/View;)V

    .line 14292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;)V

    .line 14293
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0W()V

    .line 14294
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0M()V

    .line 14295
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14296
    new-instance v1, Lcom/facebook/ads/redexgen/X/dR;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/dR;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 14297
    .local v3, "onClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Y:Lcom/facebook/ads/redexgen/X/Yb;

    if-eqz v0, :cond_1

    .line 14299
    new-instance v1, Lcom/facebook/ads/redexgen/X/dS;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/dS;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 14300
    .local v4, "onToolbarClickListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Y:Lcom/facebook/ads/redexgen/X/Yb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Yb;->setCTAClickListener(Landroid/view/View$OnClickListener;)V

    .line 14301
    .end local v3    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v4    # "onToolbarClickListener":Landroid/view/View$OnClickListener;
    :cond_1
    return-void
.end method

.method private A0U()V
    .locals 3

    .line 14302
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0k:Lcom/facebook/ads/redexgen/X/DZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 14303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0j:Lcom/facebook/ads/redexgen/X/Df;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 14304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v1, Lcom/facebook/ads/redexgen/X/3S;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/3S;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    .line 14306
    .local v0, "placeholderImagePlugin":Lcom/facebook/ads/redexgen/X/3S;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 14307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3S;->setImage(Ljava/lang/String;)V

    .line 14308
    .end local v0    # "placeholderImagePlugin":Lcom/facebook/ads/redexgen/X/3S;
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v0, Lcom/facebook/ads/redexgen/X/3B;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/3B;-><init>(Lcom/facebook/ads/redexgen/X/gi;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0f(Lcom/facebook/ads/redexgen/X/eu;)V

    .line 14309
    return-void
.end method

.method private A0V()V
    .locals 5

    .line 14310
    const/4 v1, -0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14311
    .local v0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 14312
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14313
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14315
    :goto_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 14316
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "4k5LHuHIhnjzZvLx7p7MkTP5YYpiYy7M"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 14317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14318
    return-void
.end method

.method private A0W()V
    .locals 3

    .line 14319
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0J:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14320
    .local v0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 14322
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 14323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/cd;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14324
    return-void

    .line 14325
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method public static A0X()V
    .locals 4

    const/16 v0, 0x31

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "nVqp18ph7ekHb6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wg1nH4uIQgdKmM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/5F;->A0o:[B

    return-void

    :array_0
    .array-data 1
        -0xft
        -0x6t
        -0x9t
        -0xft
        -0x7t
        -0x13t
        0x1t
        -0x3t
        0x3t
        0x0t
        -0xft
        -0xdt
        -0x44t
        -0x3ft
        -0x3dt
        -0x38t
        -0x39t
        -0x4et
        -0x40t
        -0x48t
        -0x39t
        -0x45t
        -0x3et
        -0x49t
        -0x1at
        -0x1ct
        -0x2at
        -0x1dt
        -0x2ct
        -0x23t
        -0x26t
        -0x2ct
        -0x24t
        -0x30t
        -0x29t
        -0x26t
        -0x23t
        -0x1bt
        -0x2at
        -0x1dt
        -0x2at
        -0x2bt
        -0x28t
        -0x36t
        -0x31t
        -0x3bt
        -0x30t
        -0x28t
        0x2ft
    .end array-data
.end method

.method private A0Y(Lcom/facebook/ads/redexgen/X/NR;)V
    .locals 6

    .line 14326
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/bu;->A00(Lcom/facebook/ads/redexgen/X/NR;)F

    move-result v0

    float-to-double v2, v0

    .line 14327
    .local v0, "aspectRatio":D
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NR;->A0I()Lcom/facebook/ads/redexgen/X/NY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NY;->A0F()Ljava/lang/String;

    move-result-object v1

    .line 14328
    .local v2, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 14329
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0O(Landroid/view/View;I)V

    .line 14330
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14331
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 14332
    :cond_1
    :goto_0
    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    .line 14333
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A06:I

    int-to-double v4, v0

    div-double/2addr v4, v2

    double-to-int v0, v4

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A03:I

    .line 14334
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0J:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A03:I

    .line 14335
    return-void

    .line 14336
    :cond_3
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A03:I

    goto :goto_1

    .line 14337
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0C:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A17(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14339
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0B:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_0
.end method

.method public static synthetic A0Z(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0

    .line 14340
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0P()V

    return-void
.end method

.method public static synthetic A0a(Lcom/facebook/ads/redexgen/X/5F;)V
    .locals 0

    .line 14341
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0V()V

    return-void
.end method

.method public static synthetic A0b(Lcom/facebook/ads/redexgen/X/5F;Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 0

    .line 14342
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5F;->A0f(Lcom/facebook/ads/redexgen/X/4A;)V

    return-void
.end method

.method public static synthetic A0c(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;)V
    .locals 0

    .line 14343
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5F;->A0g(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/5F;Ljava/lang/String;)V
    .locals 0

    .line 14344
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5F;->A0i(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0e(Lcom/facebook/ads/redexgen/X/5F;Z)V
    .locals 0

    .line 14345
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5F;->A0j(Z)V

    return-void
.end method

.method private A0f(Lcom/facebook/ads/redexgen/X/4A;)V
    .locals 3

    .line 14346
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A02:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_0

    .line 14347
    return-void

    .line 14348
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14349
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ht;

    invoke-direct {v2, p0, p1}, Lcom/facebook/ads/redexgen/X/Ht;-><init>(Lcom/facebook/ads/redexgen/X/5F;Lcom/facebook/ads/redexgen/X/4A;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/5F;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14350
    :cond_1
    return-void
.end method

.method private A0g(Ljava/lang/String;)V
    .locals 5

    .line 14351
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14352
    new-instance v3, Lcom/facebook/ads/redexgen/X/I1;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/I1;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    .line 14353
    .local v0, "browserListener":Lcom/facebook/ads/redexgen/X/aq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->A9v()V

    .line 14355
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14356
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uq;->A02(Landroid/content/Context;)Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "Q7cFr2gPd7sCHl"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "KP59UR8sut1qsy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14357
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 14358
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/aq;)V

    .line 14359
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    .line 14360
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/dT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dT;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M3;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14361
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V

    .line 14362
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14363
    .local v1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 14364
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0G:Lcom/facebook/ads/redexgen/X/M3;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M3;->loadUrl(Ljava/lang/String;)V

    .line 14366
    return-void

    .line 14367
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14368
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0E()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/M3;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/M3;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/aq;)V

    goto :goto_0
.end method

.method private A0h(Ljava/lang/String;)V
    .locals 4

    .line 14369
    new-instance v0, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/b9;-><init>()V

    .line 14370
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v3

    .line 14371
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0xc

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14372
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0X:Lcom/facebook/ads/redexgen/X/VI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0J:Lcom/facebook/ads/redexgen/X/VH;

    invoke-virtual {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 14373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A0w()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    .line 14374
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/VA;->ABM(Ljava/lang/String;Ljava/util/Map;)V

    .line 14375
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A2U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14376
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14377
    .local v1, "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A04:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14378
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A05:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14379
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14380
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14381
    sget-object v1, Lcom/facebook/ads/redexgen/X/kH;->A06:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14382
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14383
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14384
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ij;->A08:Lcom/facebook/ads/redexgen/X/VA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14385
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v0

    .line 14386
    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/VA;->ABn(Ljava/lang/String;Ljava/util/Map;)V

    .line 14387
    .end local v1    # "navigationDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private A0i(Ljava/lang/String;)V
    .locals 4

    .line 14388
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A25()I

    move-result v0

    if-lez v0, :cond_2

    .line 14389
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A2O()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0M:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "wgFga5xemtqUSQ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "c72BHAWejdxIIo"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 14390
    return-void

    .line 14391
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0M:Z

    .line 14392
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5F;->A0h(Ljava/lang/String;)V

    goto :goto_1

    .line 14393
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NQ;->A1d()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x69

    if-eq v1, v0, :cond_4

    if-eqz v3, :cond_3

    .line 14394
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0P()V

    .line 14395
    :cond_3
    :goto_1
    return-void

    .line 14396
    :cond_4
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "tZ3pnOdiXKjC0M"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "WpWfv8IGy682Ke"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method private A0j(Z)V
    .locals 11

    .line 14397
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0R:Z

    if-nez v0, :cond_0

    .line 14398
    return-void

    .line 14399
    :cond_0
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0K:Z

    .line 14400
    const/4 v8, 0x0

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    .line 14401
    iput v7, p0, Lcom/facebook/ads/redexgen/X/5F;->A02:I

    .line 14402
    iput v7, p0, Lcom/facebook/ads/redexgen/X/5F;->A07:I

    .line 14403
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/5F;->A0N:Z

    .line 14404
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/5F;->A0O:Z

    .line 14405
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/5F;->A0P:Z

    .line 14406
    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/5F;->A0M:Z

    .line 14407
    :goto_0
    const/16 v2, 0x30

    const/4 v1, 0x1

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_1

    .line 14408
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    .line 14409
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cd;->getY()F

    move-result v2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    new-array v0, v10, [F

    aput v2, v0, v7

    aput v1, v0, v9

    .line 14410
    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 14411
    .local v0, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    .line 14412
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getY()F

    move-result v2

    .line 14413
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    if-eqz p1, :cond_2

    div-int/lit8 v0, v0, 0x5

    :cond_2
    int-to-float v1, v0

    new-array v0, v10, [F

    aput v2, v0, v7

    aput v1, v0, v9

    .line 14414
    invoke-static {v3, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 14415
    .local v5, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v6, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14416
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14417
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getY()F

    move-result v0

    new-array v3, v10, [F

    aput v0, v3, v7

    const/4 v0, 0x0

    aput v0, v3, v9

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 14418
    .local v2, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14420
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getHeight()I

    move-result v3

    .line 14421
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    if-eqz p1, :cond_3

    div-int/lit8 v0, v0, 0x5

    :cond_3
    filled-new-array {v3, v0}, [I

    move-result-object v0

    .line 14422
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 14423
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 14424
    .local v8, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/dV;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dV;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14425
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 14426
    .local v9, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14427
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v6, v0, v7

    aput-object v5, v0, v9

    aput-object v4, v0, v10

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14428
    if-eqz v8, :cond_4

    .line 14429
    invoke-virtual {v8, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14430
    new-array v0, v9, [Landroid/animation/Animator;

    aput-object v8, v0, v7

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14431
    :cond_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/dW;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/dW;-><init>(Lcom/facebook/ads/redexgen/X/5F;Z)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14432
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0n:Z

    if-eqz v0, :cond_5

    .line 14433
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0, v3, p1}, Lcom/facebook/ads/redexgen/X/Ek;->A0c(Landroid/animation/AnimatorSet;Z)V

    .line 14434
    :cond_5
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 14435
    return-void

    .line 14436
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A08:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private A0k(Z)V
    .locals 3

    .line 14437
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5F;->setupLayoutConfiguration(Z)V

    .line 14438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14439
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0K:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 14440
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    div-int/lit8 v0, v0, 0x5

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14441
    .local v0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14442
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14443
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setTranslationY(F)V

    .line 14444
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/facebook/ads/redexgen/X/5F;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14445
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0M()V

    .line 14446
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0W()V

    .line 14447
    return-void

    .line 14448
    .end local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 14449
    .restart local v0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14450
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0S()V

    goto :goto_0
.end method

.method private A0l(ZI)V
    .locals 2

    .line 14451
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    xor-int/lit8 v0, p1, 0x1

    invoke-interface {v1, v0, p2}, Lcom/facebook/ads/redexgen/X/Lt;->ACG(ZI)V

    .line 14452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    if-eqz v0, :cond_0

    .line 14453
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setCloseButtonVisibility(I)V

    .line 14454
    :cond_0
    return-void

    .line 14455
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private final A0m()Z
    .locals 1

    .line 14456
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0K:Z

    return v0
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/5F;)Z
    .locals 0

    .line 14457
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0K:Z

    return p0
.end method

.method public static synthetic A0o(Lcom/facebook/ads/redexgen/X/5F;)Z
    .locals 0

    .line 14458
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Q:Z

    return p0
.end method

.method public static synthetic A0p(Lcom/facebook/ads/redexgen/X/5F;)Z
    .locals 0

    .line 14459
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0P:Z

    return p0
.end method

.method public static synthetic A0q(Lcom/facebook/ads/redexgen/X/5F;)Z
    .locals 0

    .line 14460
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0T:Z

    return p0
.end method

.method public static synthetic A0r(Lcom/facebook/ads/redexgen/X/5F;)Z
    .locals 0

    .line 14461
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0O:Z

    return p0
.end method

.method public static synthetic A0s(Lcom/facebook/ads/redexgen/X/5F;)Z
    .locals 0

    .line 14462
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0N:Z

    return p0
.end method

.method public static synthetic A0t(Lcom/facebook/ads/redexgen/X/5F;Z)Z
    .locals 0

    .line 14463
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Q:Z

    return p1
.end method

.method public static synthetic A0u(Lcom/facebook/ads/redexgen/X/5F;Z)Z
    .locals 0

    .line 14464
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0P:Z

    return p1
.end method

.method public static synthetic A0v(Lcom/facebook/ads/redexgen/X/5F;Z)Z
    .locals 0

    .line 14465
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0T:Z

    return p1
.end method

.method public static synthetic A0w(Lcom/facebook/ads/redexgen/X/5F;Z)Z
    .locals 0

    .line 14466
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0O:Z

    return p1
.end method

.method public static synthetic A0x(Lcom/facebook/ads/redexgen/X/5F;Z)Z
    .locals 0

    .line 14467
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0N:Z

    return p1
.end method

.method public static synthetic A0y(Lcom/facebook/ads/redexgen/X/5F;Z)Z
    .locals 0

    .line 14468
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0L:Z

    return p1
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/M3;)V
    .locals 5

    .line 14533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14534
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0n:Z

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/M6;

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/webkit/WebView;ZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    .line 14535
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0m:Z

    if-eqz v0, :cond_0

    .line 14536
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0R:Z

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/5F;->A0l(ZI)V

    .line 14537
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/ar;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/M3;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/ar;)V

    .line 14538
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0K(Landroid/view/View;)V

    .line 14539
    const/4 v0, -0x2

    const/4 v4, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14540
    .local v0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 14541
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hy;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Hy;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setListener(Lcom/facebook/ads/redexgen/X/au;)V

    .line 14542
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    new-instance v0, Lcom/facebook/ads/redexgen/X/dU;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dU;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14543
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0E:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14544
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0F:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0J(Landroid/view/View;)V

    .line 14545
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/gi;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0F:Lcom/facebook/ads/redexgen/X/ah;

    .line 14546
    sget v0, Lcom/facebook/ads/redexgen/X/5F;->A0q:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14547
    .local v1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0A:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0F:Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14548
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 5

    .line 14549
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5F;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0J:Z

    .line 14550
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0K:Z

    .line 14551
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    .line 14552
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A06:I

    .line 14553
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 14554
    .local v0, "size":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    .line 14555
    const/16 v2, 0x2a

    const/4 v1, 0x6

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/gi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 14556
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 14557
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_2

    .line 14558
    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 14559
    .local v2, "windowMetrics":Landroid/view/WindowMetrics;
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, v3, Landroid/graphics/Point;->y:I

    .line 14560
    .end local v2    # "windowMetrics":Landroid/view/WindowMetrics;
    .end local v2
    :cond_0
    :goto_1
    iget v0, v3, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_1

    iget v0, v3, Landroid/graphics/Point;->y:I

    :goto_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A05:I

    .line 14561
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A03:I

    .line 14562
    return-void

    .line 14563
    :cond_1
    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A04:I

    goto :goto_2

    .line 14564
    :cond_2
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 14565
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_1

    .line 14566
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A1D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 4

    .line 14469
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14470
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0H:Lcom/facebook/ads/redexgen/X/cd;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/cd;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "gDqV8VnRL5n4dziTmRcIoSoDocYisV3G"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 14471
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0
.end method

.method public final A1E()V
    .locals 8

    .line 14472
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0Q()V

    .line 14473
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Up;->A1z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14474
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0W:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A0B()Lcom/facebook/ads/redexgen/X/VM;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/VM;->AKU(Landroid/view/View;)V

    .line 14475
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0a:Lcom/facebook/ads/redexgen/X/Eu;

    if-eqz v0, :cond_2

    .line 14476
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0a:Lcom/facebook/ads/redexgen/X/Eu;

    sget-object v1, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x76

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "qZF2LURQ0N2avpQsVigAjVMCIAfnIk4T"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Eu;->A07()V

    .line 14477
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    .line 14478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    .line 14479
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getEventBus()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v3

    const/4 v0, 0x6

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/UN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0h:Lcom/facebook/ads/redexgen/X/E0;

    aput-object v0, v2, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0g:Lcom/facebook/ads/redexgen/X/E2;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0f:Lcom/facebook/ads/redexgen/X/E4;

    aput-object v0, v2, v7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0i:Lcom/facebook/ads/redexgen/X/Dz;

    aput-object v0, v2, v4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0d:Lcom/facebook/ads/redexgen/X/EA;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0e:Lcom/facebook/ads/redexgen/X/E8;

    aput-object v0, v2, v1

    .line 14480
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/UM;->A04([Lcom/facebook/ads/redexgen/X/UN;)V

    .line 14481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YB;->A0H(Landroid/view/View;)V

    .line 14482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0W()V

    .line 14483
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0c:Lcom/facebook/ads/redexgen/X/4L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4L;->A0p()V

    .line 14484
    new-array v1, v4, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0k:Lcom/facebook/ads/redexgen/X/DZ;

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0j:Lcom/facebook/ads/redexgen/X/Df;

    aput-object v0, v1, v7

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/YB;->A0d([Landroid/view/View;)V

    .line 14485
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0D:Lcom/facebook/ads/redexgen/X/fp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/fp;->A0V()V

    .line 14486
    return-void
.end method

.method public final A1G()V
    .locals 0

    .line 14487
    return-void
.end method

.method public final A1H()V
    .locals 3

    .line 14488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A0A()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->setVolume(F)V

    .line 14489
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    sget-object v1, Lcom/facebook/ads/redexgen/X/et;->A02:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x14

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 14490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A02()I

    move-result v2

    .line 14491
    .local v0, "secondsForNextCta":I
    if-eqz v2, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0U:I

    if-lt v2, v0, :cond_2

    .line 14492
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Y:Lcom/facebook/ads/redexgen/X/Yb;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setToolbarActionMode(I)V

    .line 14493
    :cond_1
    :goto_1
    return-void

    .line 14494
    :cond_2
    if-lez v2, :cond_1

    .line 14495
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0Y:Lcom/facebook/ads/redexgen/X/Yb;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Yb;->setProgressSpinnerInvisible(Z)V

    .line 14496
    new-instance v1, Lcom/facebook/ads/redexgen/X/Hx;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Hx;-><init>(Lcom/facebook/ads/redexgen/X/5F;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XO;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/XO;-><init>(ILcom/facebook/ads/redexgen/X/XN;)V

    .line 14497
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XO;->A07()Z

    goto :goto_1

    .line 14498
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public final A1I(Z)V
    .locals 1

    .line 14499
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0R:Z

    .line 14500
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0l(ZI)V

    .line 14501
    return-void
.end method

.method public final A1J(Z)V
    .locals 3

    .line 14502
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14503
    return-void

    .line 14504
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/et;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0I:Lcom/facebook/ads/redexgen/X/et;

    .line 14505
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0S:Z

    .line 14506
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    const/4 v1, 0x0

    const/16 v0, 0xd

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0i(ZI)V

    .line 14507
    return-void
.end method

.method public final A1K(Z)V
    .locals 4

    .line 14508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ek;->getState()Lcom/facebook/ads/redexgen/X/fm;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/fm;->A06:Lcom/facebook/ads/redexgen/X/fm;

    if-eq v1, v0, :cond_2

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5F;->A0I:Lcom/facebook/ads/redexgen/X/et;

    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/5F;->A0p:[Ljava/lang/String;

    const-string v1, "XPxqC5lbhdZAQT"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "OGUEg1S7IFb9ga"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0S:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 14509
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5F;->A0b:Lcom/facebook/ads/redexgen/X/Ek;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5F;->A0I:Lcom/facebook/ads/redexgen/X/et;

    const/16 v0, 0x13

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ek;->A0e(Lcom/facebook/ads/redexgen/X/et;I)V

    .line 14510
    :cond_2
    return-void
.end method

.method public final A1L()Z
    .locals 1

    .line 14511
    const/4 v0, 0x0

    return v0
.end method

.method public final A1M()Z
    .locals 1

    .line 14512
    const/4 v0, 0x0

    return v0
.end method

.method public final A1N()Z
    .locals 1

    .line 14513
    const/4 v0, 0x1

    return v0
.end method

.method public final A1O()Z
    .locals 1

    .line 14514
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0m()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/Na;
    .locals 1

    .line 14515
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5F;->A0D:Lcom/facebook/ads/redexgen/X/Na;

    return-object v0
.end method

.method public getFullScreenAdStyle()Lcom/facebook/ads/redexgen/X/dk;
    .locals 8

    .line 14516
    new-instance v1, Lcom/facebook/ads/redexgen/X/dk;

    sget v3, Lcom/facebook/ads/redexgen/X/dk;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14517
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14518
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Kr;->A05(Lcom/facebook/ads/redexgen/X/jd;)Z

    move-result v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14519
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A28()Lcom/facebook/ads/redexgen/X/NN;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NN;->A01()Lcom/facebook/ads/redexgen/X/Na;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Na;->A08(Z)I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A06:Lcom/facebook/ads/redexgen/X/jd;

    .line 14520
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/dk;-><init>(ZILcom/facebook/ads/redexgen/X/Na;ZILjava/lang/String;)V

    .line 14521
    return-object v1
.end method

.method public getTouchDataRecorder()Lcom/facebook/ads/redexgen/X/Y2;
    .locals 1

    .line 14522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ij;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 14523
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ij;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 14524
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->A0k(Z)V

    .line 14525
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->setupLayoutConfiguration(Z)V

    .line 14526
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5F;->A0V()V

    .line 14527
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .line 14528
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Ij;->onWindowFocusChanged(Z)V

    .line 14529
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 14530
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->A1K(Z)V

    .line 14531
    :goto_0
    return-void

    .line 14532
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5F;->A1J(Z)V

    goto :goto_0
.end method
