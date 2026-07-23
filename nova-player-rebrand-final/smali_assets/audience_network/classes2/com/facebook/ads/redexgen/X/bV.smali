.class public final Lcom/facebook/ads/redexgen/X/bV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/bU;
    }
.end annotation


# static fields
.field public static A0F:J

.field public static A0G:[B

.field public static A0H:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Mr;

.field public A01:Lcom/facebook/ads/redexgen/X/Mt;

.field public A02:Lcom/facebook/ads/redexgen/X/jd;

.field public A03:Lcom/facebook/ads/redexgen/X/XS;

.field public A04:Lcom/facebook/ads/redexgen/X/Xh;

.field public A05:Lcom/facebook/ads/redexgen/X/bU;

.field public A06:Z

.field public final A07:Lcom/facebook/ads/redexgen/X/Ng;

.field public final A08:Lcom/facebook/ads/redexgen/X/gi;

.field public final A09:Lcom/facebook/ads/redexgen/X/VA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Y2;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Yh;

.field public final A0C:Lcom/facebook/ads/redexgen/X/fp;

.field public final A0D:Ljava/lang/String;

.field public final A0E:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2640
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "R0SbMgWAoC497HVFrz"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HjDMjTQFKfQjEPdjddKMHVEmssyIO6xJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qLmiUd82g2mhrwqPXxjSPUm4NIZHyVr2"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "b8w5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5ahVLoWejnV8u5u0zxB2Y4aA1Z0H734m"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "82nB4Ww4zktBcOGVc7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fE0nEfPNcAkneFTlCeTsSM9yzZ1yQJUc"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9xmO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bV;->A0H:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bV;->A03()V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/bV;->A0F:J

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;)V
    .locals 8

    .line 77954
    new-instance v7, Lcom/facebook/ads/redexgen/X/Ks;

    invoke-direct {v7}, Lcom/facebook/ads/redexgen/X/Ks;-><init>()V

    move-object v0, p0

    move-object v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/bV;-><init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;)V

    .line 77955
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;)V
    .locals 1

    .line 77956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77957
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A0E:Z

    .line 77958
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 77959
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bV;->A0D:Ljava/lang/String;

    .line 77960
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bV;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    .line 77961
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bV;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    .line 77962
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/bV;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 77963
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/bV;->A07:Lcom/facebook/ads/redexgen/X/Ng;

    .line 77964
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/bV;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    .line 77965
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/gi;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/fp;Lcom/facebook/ads/redexgen/X/Y2;Lcom/facebook/ads/redexgen/X/VA;Lcom/facebook/ads/redexgen/X/Ng;Lcom/facebook/ads/redexgen/X/Yh;Lcom/facebook/ads/redexgen/X/Xh;)V
    .locals 1

    .line 77966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A0E:Z

    .line 77968
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 77969
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bV;->A0D:Ljava/lang/String;

    .line 77970
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bV;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    .line 77971
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bV;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    .line 77972
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/bV;->A09:Lcom/facebook/ads/redexgen/X/VA;

    .line 77973
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/bV;->A07:Lcom/facebook/ads/redexgen/X/Ng;

    .line 77974
    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/bV;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    .line 77975
    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/bV;->A04:Lcom/facebook/ads/redexgen/X/Xh;

    .line 77976
    return-void
.end method

.method private A00(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Mq;"
        }
    .end annotation

    .line 77977
    .local p2, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/16 v1, 0x16

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bV;->A01(III)Ljava/lang/String;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 77978
    .local v1, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Lcom/facebook/ads/redexgen/X/jd;

    invoke-static {p3, v0}, Lcom/facebook/ads/redexgen/X/YB;->A0c(Ljava/util/Map;Lcom/facebook/ads/redexgen/X/jd;)V

    .line 77979
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/XB;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 77980
    .local v6, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    if-nez v0, :cond_0

    .line 77981
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bV;->A08:Lcom/facebook/ads/redexgen/X/gi;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bV;->A09:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v3, Lcom/facebook/ads/redexgen/X/b9;

    invoke-direct {v3, p3}, Lcom/facebook/ads/redexgen/X/b9;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A0C:Lcom/facebook/ads/redexgen/X/fp;

    .line 77982
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/b9;->A03(Lcom/facebook/ads/redexgen/X/fp;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    .line 77983
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/b9;->A02(Lcom/facebook/ads/redexgen/X/Y2;)Lcom/facebook/ads/redexgen/X/b9;

    move-result-object v0

    .line 77984
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/b9;->A05()Ljava/util/Map;

    move-result-object v8

    iget-boolean v10, p0, Lcom/facebook/ads/redexgen/X/bV;->A06:Z

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/bV;->A07:Lcom/facebook/ads/redexgen/X/Ng;

    .line 77985
    const/4 v9, 0x1

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/Mu;->A01(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/VA;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZLcom/facebook/ads/redexgen/X/Ng;)Lcom/facebook/ads/redexgen/X/Mt;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    .line 77986
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bV;->A02()V

    .line 77987
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/87;

    if-eqz v0, :cond_1

    .line 77988
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    check-cast v3, Lcom/facebook/ads/redexgen/X/87;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A03:Lcom/facebook/ads/redexgen/X/XS;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/87;->A0N(Lcom/facebook/ads/redexgen/X/XS;)V

    .line 77989
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    if-eqz v0, :cond_2

    .line 77990
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    const/16 v4, 0x40

    const/16 v3, 0xc

    const/16 v0, 0x53

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Mt;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v1

    .line 77991
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A06:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/85;

    if-eqz v0, :cond_2

    .line 77992
    sget-object v1, Lcom/facebook/ads/redexgen/X/Mq;->A08:Lcom/facebook/ads/redexgen/X/Mq;

    .line 77993
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/84;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/87;

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 77994
    invoke-static {v0, v1, p3}, Lcom/facebook/ads/redexgen/X/YB;->A0i(Lcom/facebook/ads/redexgen/X/gi;Lcom/facebook/ads/redexgen/X/Mq;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 77995
    .local v2, "clickFilteringEnabled":Z
    :goto_0
    if-nez v0, :cond_6

    sget-object v0, Lcom/facebook/ads/redexgen/X/Mq;->A06:Lcom/facebook/ads/redexgen/X/Mq;

    if-eq v1, v0, :cond_6

    .line 77996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A05:Lcom/facebook/ads/redexgen/X/bU;

    if-eqz v0, :cond_5

    .line 77997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A05:Lcom/facebook/ads/redexgen/X/bU;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/bU;->ADY()V

    .line 77998
    :cond_5
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bV;->A0B:Lcom/facebook/ads/redexgen/X/Yh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A0D:Ljava/lang/String;

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Yh;->A4j(Ljava/lang/String;)V

    goto :goto_1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77999
    .end local v2    # "clickFilteringEnabled":Z
    .end local v6    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 78000
    .local v2, "ex":Ljava/lang/Exception;
    const/16 v4, 0x16

    const/16 v3, 0x16

    const/16 v0, 0x1b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78001
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 78002
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2c

    const/16 v3, 0x14

    const/16 v0, 0x44

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/bV;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78003
    :cond_6
    :goto_1
    return-object v1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bV;->A0G:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x13

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A02()V
    .locals 2

    .line 78004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    .line 78005
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A0E()Lcom/facebook/ads/redexgen/X/Mr;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/Mr;

    if-eqz v0, :cond_0

    .line 78006
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/Mr;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mt;->A0F(Lcom/facebook/ads/redexgen/X/Mr;)V

    .line 78007
    :cond_0
    return-void
.end method

.method public static A03()V
    .locals 4

    const/16 v0, 0x4c

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/bV;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bV;->A0H:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/bV;->A0G:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x77t
        -0x78t
        0x75t
        0x76t
        -0x57t
        -0x58t
        -0x58t
        -0x5dt
        -0x5et
        0x77t
        -0x60t
        -0x63t
        -0x69t
        -0x61t
        -0x80t
        -0x63t
        -0x59t
        -0x58t
        -0x67t
        -0x5et
        -0x67t
        -0x5at
        0x73t
        -0x60t
        -0x60t
        -0x63t
        -0x60t
        0x4et
        -0x6dt
        -0x5at
        -0x6dt
        -0x6ft
        -0x5dt
        -0x5et
        -0x69t
        -0x64t
        -0x6bt
        0x4et
        -0x71t
        -0x6ft
        -0x5et
        -0x69t
        -0x63t
        -0x64t
        -0x64t
        -0x37t
        -0x37t
        -0x3at
        -0x37t
        0x77t
        -0x32t
        -0x41t
        -0x40t
        -0x3dt
        -0x44t
        0x77t
        -0x3at
        -0x39t
        -0x44t
        -0x3bt
        -0x40t
        -0x3bt
        -0x42t
        0x77t
        -0x37t
        -0x2et
        -0x31t
        -0x37t
        -0x2ft
        -0x3bt
        -0x27t
        -0x2bt
        -0x25t
        -0x28t
        -0x37t
        -0x35t
    .end array-data
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/gi;)Z
    .locals 7

    .line 78008
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A2w(Landroid/content/Context;)Z

    move-result v2

    .line 78009
    .local v0, "isIABBottomSheetEnabled":Z
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Up;->A07(Landroid/content/Context;)I

    move-result p0

    .line 78010
    .local v1, "clickguardTime":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v0, Lcom/facebook/ads/redexgen/X/bV;->A0F:J

    sub-long/2addr v5, v0

    .line 78011
    .local v2, "timeSinceLastClick":J
    if-eqz v2, :cond_0

    sget-wide v3, Lcom/facebook/ads/redexgen/X/bV;->A0F:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    int-to-long v1, p0

    cmp-long v0, v5, v1

    if-gez v0, :cond_0

    .line 78012
    const/4 v0, 0x1

    return v0

    .line 78013
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/bV;->A0F:J

    .line 78014
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final A05(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/Mq;"
        }
    .end annotation

    .line 78015
    .local p3, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/facebook/ads/redexgen/X/Mq;->A09:Lcom/facebook/ads/redexgen/X/Mq;

    .line 78016
    .local v0, "actionOutcome":Lcom/facebook/ads/redexgen/X/Mq;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A09:Lcom/facebook/ads/redexgen/X/VA;

    new-instance v1, Lcom/facebook/ads/redexgen/X/VI;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/VI;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VA;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/VH;->A0J:Lcom/facebook/ads/redexgen/X/VH;

    invoke-virtual {v1, v0, p3}, Lcom/facebook/ads/redexgen/X/VI;->A04(Lcom/facebook/ads/redexgen/X/VH;Ljava/util/Map;)V

    .line 78017
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bV;->A0A:Lcom/facebook/ads/redexgen/X/Y2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A08:Lcom/facebook/ads/redexgen/X/gi;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Y2;->A09(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78018
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A09:Lcom/facebook/ads/redexgen/X/VA;

    invoke-interface {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/VA;->AB6(Ljava/lang/String;Ljava/util/Map;)V

    .line 78019
    :cond_0
    :goto_0
    return-object v3

    .line 78020
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/bV;->A00(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v3

    .line 78021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Lcom/facebook/ads/redexgen/X/jd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78022
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0L()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A04:Lcom/facebook/ads/redexgen/X/Xh;

    if-eqz v0, :cond_0

    .line 78023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A08:Lcom/facebook/ads/redexgen/X/gi;

    .line 78024
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T8;->A02()Lcom/facebook/ads/redexgen/X/ge;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78025
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/jd;->A29()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->A0L()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A04:Lcom/facebook/ads/redexgen/X/Xh;

    .line 78026
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XI;->A07(Lcom/facebook/ads/redexgen/X/ge;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Xh;)V

    goto :goto_0
.end method

.method public final A06()Lcom/facebook/ads/redexgen/X/Mr;
    .locals 4

    .line 78027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    if-eqz v0, :cond_1

    .line 78028
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Mt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mt;->A0E()Lcom/facebook/ads/redexgen/X/Mr;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bV;->A0H:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bV;->A0H:[Ljava/lang/String;

    const-string v1, "m9EeWSKmUQIcAT4bR8TqW1uNxXCrncrR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "ZpUrOoewPl5vbi76KZuNJwABiWDkIMaY"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 78029
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A07(Lcom/facebook/ads/redexgen/X/Mr;)V
    .locals 0

    .line 78030
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/Mr;

    .line 78031
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bV;->A02()V

    .line 78032
    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/jd;)V
    .locals 0

    .line 78033
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A02:Lcom/facebook/ads/redexgen/X/jd;

    .line 78034
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/XS;)V
    .locals 0

    .line 78035
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A03:Lcom/facebook/ads/redexgen/X/XS;

    .line 78036
    return-void
.end method

.method public final A0A(Lcom/facebook/ads/redexgen/X/Xh;)V
    .locals 0

    .line 78037
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A04:Lcom/facebook/ads/redexgen/X/Xh;

    .line 78038
    return-void
.end method

.method public final A0B(Lcom/facebook/ads/redexgen/X/bU;)V
    .locals 0

    .line 78039
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A05:Lcom/facebook/ads/redexgen/X/bU;

    .line 78040
    return-void
.end method

.method public final A0C(Z)V
    .locals 0

    .line 78041
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/bV;->A06:Z

    .line 78042
    return-void
.end method
