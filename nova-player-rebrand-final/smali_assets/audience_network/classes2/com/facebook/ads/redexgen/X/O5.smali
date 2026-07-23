.class public abstract Lcom/facebook/ads/redexgen/X/O5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/O3;,
        Lcom/facebook/ads/redexgen/X/jA;,
        Lcom/facebook/ads/redexgen/X/O4;
    }
.end annotation


# static fields
.field public static A00:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/O5;->A01()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/O5;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x73

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

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/O5;->A00:[B

    return-void

    :array_0
    .array-data 1
        0xbt
        0x4dt
        0x51t
        0x48t
        0x49t
        0x5dt
        0x5at
        0x40t
        0x51t
        0x46t
        0x47t
        0x40t
        0x5dt
        0x40t
        0x5dt
        0x55t
        0x58t
    .end array-data
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/jd;ZLcom/facebook/ads/redexgen/X/O3;)V
    .locals 11

    .line 55246
    move-object v7, p0

    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/Up;->A2E(Landroid/content/Context;)Z

    move-result v0

    move-object v8, p3

    if-eqz v0, :cond_0

    .line 55247
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/O3;->AFG()V

    .line 55248
    return-void

    .line 55249
    :cond_0
    new-instance v9, Lcom/facebook/ads/redexgen/X/Sx;

    invoke-direct {v9, v7}, Lcom/facebook/ads/redexgen/X/Sx;-><init>(Lcom/facebook/ads/redexgen/X/T8;)V

    .line 55250
    .local v0, "cacheManager":Lcom/facebook/ads/redexgen/X/Sx;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0H()Lcom/facebook/ads/redexgen/X/NU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NU;->A07()Lcom/facebook/ads/redexgen/X/No;

    move-result-object v10

    .line 55251
    .local v8, "playableAdData":Lcom/facebook/ads/redexgen/X/No;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/T8;->A0A()Lcom/facebook/ads/redexgen/X/VA;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    .line 55252
    .local v9, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/VI;
    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0e(Lcom/facebook/ads/redexgen/X/VI;)V

    .line 55253
    if-nez v10, :cond_1

    .line 55254
    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v8, v0}, Lcom/facebook/ads/redexgen/X/O3;->AFF(Lcom/facebook/ads/AdError;)V

    .line 55255
    return-void

    .line 55256
    :cond_1
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/No;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55257
    invoke-interface {v8}, Lcom/facebook/ads/redexgen/X/O3;->AFG()V

    .line 55258
    return-void

    .line 55259
    :cond_2
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/No;->A0L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/St;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/St;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55260
    .local p0, "fileData":Lcom/facebook/ads/redexgen/X/St;
    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/facebook/ads/redexgen/X/St;->A04:Z

    .line 55261
    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O5;->A00(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/St;->A03:Ljava/lang/String;

    .line 55262
    sget-object v1, Lcom/facebook/ads/redexgen/X/O2;->A00:[I

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/No;->A0G()Lcom/facebook/ads/redexgen/X/Np;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Np;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 55263
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55264
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/jd;->A2C()Lcom/facebook/ads/redexgen/X/Nm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nm;->A01()Ljava/lang/String;

    move-result-object v2

    .line 55265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v5

    .line 55266
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55267
    invoke-virtual {v9, v1}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55268
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sv;

    .line 55269
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/No;->A0K()Ljava/lang/String;

    move-result-object v1

    .line 55270
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v4

    .line 55271
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 55272
    invoke-virtual {v9, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0c(Lcom/facebook/ads/redexgen/X/Sv;)V

    .line 55273
    const/4 v2, 0x5

    const/16 v1, 0xc

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/O5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v9, v0}, Lcom/facebook/ads/redexgen/X/O0;->A00(Lcom/facebook/ads/redexgen/X/NQ;Lcom/facebook/ads/redexgen/X/Sx;Ljava/lang/String;)V

    .line 55274
    new-instance v6, Lcom/facebook/ads/redexgen/X/jA;

    move p0, p2

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/jA;-><init>(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/O3;Lcom/facebook/ads/redexgen/X/Sx;Lcom/facebook/ads/redexgen/X/No;Z)V

    .line 55275
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A1D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/NQ;->A10()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55276
    invoke-virtual {v9, v6, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A0X(Lcom/facebook/ads/redexgen/X/Sp;Lcom/facebook/ads/redexgen/X/Sq;)V

    .line 55277
    return-void

    .line 55278
    :pswitch_0
    invoke-virtual {v9, v3}, Lcom/facebook/ads/redexgen/X/Sx;->A0Y(Lcom/facebook/ads/redexgen/X/St;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
