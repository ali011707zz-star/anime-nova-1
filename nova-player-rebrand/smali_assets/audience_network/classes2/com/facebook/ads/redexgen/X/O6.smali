.class public abstract Lcom/facebook/ads/redexgen/X/O6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/j4;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/O6;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/O6;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x66

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

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/O6;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xat
        0x4ct
        0x50t
        0x49t
        0x48t
        0x79t
        0x7et
        0x64t
        0x75t
        0x62t
        0x63t
        0x64t
        0x79t
        0x64t
        0x79t
        0x71t
        0x7ct
        0x65t
        0x72t
        0x60t
        0x76t
        0x65t
        0x73t
        0x72t
        0x73t
        0x48t
        0x61t
        0x7et
        0x73t
        0x72t
        0x78t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/7l;)V
    .locals 11

    .line 55279
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55280
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    sget v6, Lcom/facebook/ads/redexgen/X/e4;->A04:I

    .line 55281
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55282
    invoke-virtual {p1, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55283
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1g()Z

    move-result v5

    .line 55284
    .local v0, "isDSL":Z
    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_0

    .line 55285
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A0x()Ljava/lang/String;

    move-result-object v2

    .line 55286
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v4, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55287
    .local v2, "cacheFileData":Lcom/facebook/ads/redexgen/X/St;
    const/4 v1, 0x1

    iput-boolean v1, v4, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 55288
    const/4 v3, 0x0

    const/4 v2, 0x5

    const/16 v1, 0x42

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/facebook/ads/redexgen/X/St;->A03:Ljava/lang/String;

    .line 55289
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Sx;->A0Y(Lcom/facebook/ads/redexgen/X/St;)V

    .line 55290
    .end local v2    # "cacheFileData":Lcom/facebook/ads/redexgen/X/St;
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/fX;->A03()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/facebook/ads/redexgen/X/Up;->A30(Landroid/content/Context;Z)Z

    move-result v4

    .line 55291
    .local v2, "useExoPlayerCacheForDSL":Z
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v7

    .line 55292
    .local v3, "videoUrlToCache":Ljava/lang/String;
    new-instance v6, Lcom/facebook/ads/redexgen/X/St;

    .line 55293
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v8

    .line 55294
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NU;->A06()J

    move-result-wide v10

    const/16 v3, 0x11

    const/16 v2, 0xe

    const/16 v1, 0x71

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55295
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/St;
    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 55296
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/Sx;->A0Y(Lcom/facebook/ads/redexgen/X/St;)V

    .line 55297
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55298
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v5

    .line 55299
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/O1;->A00(Lcom/facebook/ads/redexgen/X/NU;)I

    move-result v6

    .line 55300
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/O1;->A01(Lcom/facebook/ads/redexgen/X/NU;)I

    move-result v7

    .line 55301
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v8

    const/16 v3, 0x11

    const/16 v2, 0xe

    const/16 v1, 0x71

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55302
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55303
    invoke-static {p2, p1, v0}, Lcom/facebook/ads/redexgen/X/O0;->A00(Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/String;)V

    .line 55304
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 55305
    .local v5, "url":Ljava/lang/String;
    new-instance v4, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55306
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x11

    const/16 v1, 0xe

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v9

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55307
    invoke-virtual {p1, v4}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55308
    .end local v5    # "url":Ljava/lang/String;
    goto :goto_1

    .line 55309
    :cond_1
    invoke-virtual {p1, v6}, Lcom/facebook/ads/redexgen/X/Sx;->A0b(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_0

    .line 55310
    :cond_2
    return-void
.end method

.method public static A03(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/7l;)V
    .locals 12

    .line 55311
    const/4 v6, 0x0

    .line 55312
    .local v0, "i":I
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/jd;->A2G()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NR;

    .line 55313
    .local v2, "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    new-instance v7, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55314
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NU;->A08()Ljava/lang/String;

    move-result-object v8

    .line 55315
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/O1;->A00(Lcom/facebook/ads/redexgen/X/NU;)I

    move-result v9

    .line 55316
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/O1;->A01(Lcom/facebook/ads/redexgen/X/NU;)I

    move-result v10

    .line 55317
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x5

    const/16 v2, 0xc

    const/16 v1, 0x76

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object p0

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55318
    .local v3, "imageData":Lcom/facebook/ads/redexgen/X/Sv;
    if-nez v6, :cond_2

    .line 55319
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55320
    :goto_1
    const/16 v3, 0x11

    const/16 v2, 0xe

    const/16 v1, 0x71

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/facebook/ads/redexgen/X/O0;->A00(Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/String;)V

    .line 55321
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0K()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Nd;->A02()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 55322
    .local v5, "endCardUrl":Ljava/lang/String;
    new-instance v7, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55323
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x5

    const/16 v2, 0xc

    const/16 v1, 0x76

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object p0

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55324
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55325
    .end local v5    # "endCardUrl":Ljava/lang/String;
    goto :goto_2

    .line 55326
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55327
    new-instance v7, Lcom/facebook/ads/redexgen/X/St;

    .line 55328
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/NU;->A09()Ljava/lang/String;

    move-result-object v8

    .line 55329
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v9

    .line 55330
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A06()J

    move-result-wide v11

    const/4 v2, 0x5

    const/16 v1, 0xc

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O6;->A00(III)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 55331
    .local v4, "fileData":Lcom/facebook/ads/redexgen/X/St;
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 55332
    .end local v4    # "fileData":Lcom/facebook/ads/redexgen/X/St;
    .end local v2    # "adInfo":Lcom/facebook/ads/redexgen/X/NR;
    .end local v3    # "imageData":Lcom/facebook/ads/redexgen/X/Sv;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 55333
    goto/16 :goto_0

    .line 55334
    :cond_2
    invoke-virtual {p1, v7}, Lcom/facebook/ads/redexgen/X/Sx;->A0d(Lcom/facebook/ads/redexgen/X/Sv;)V

    goto :goto_1

    .line 55335
    :cond_3
    return-void
.end method
